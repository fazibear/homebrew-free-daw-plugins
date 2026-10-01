#!/usr/bin/env python3
"""Create deduplicated casks from GitHub or Plugins4Free candidate JSON."""
import json
import re
import sys
import tempfile
import urllib.parse
import urllib.request
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CASKS = ROOT / "Casks"

def slug(value):
    value = re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")
    return re.sub(r"-releases?$", "", value)[:50].rstrip("-")

def clean_name(value):
    value = re.sub(r"(?:[-_ ]+(?:vst3?|au|clap|lv2|plugin|plugins|audio|osx|macos|recompiled))+$", "", value, flags=re.I)
    return value.strip("-_ ")

def existing():
    result = {path.stem for path in CASKS.glob("*.rb")}
    try:
        request = urllib.request.Request("https://formulae.brew.sh/api/cask.json", headers={"User-Agent": "free-daw-cask-discovery"})
        with urllib.request.urlopen(request, timeout=30) as response:
            result |= {item["token"] for item in json.load(response)}
    except Exception as error:
        print(f"warning: Homebrew catalog unavailable: {error}", file=sys.stderr)
    return result

def archive_members(candidate):
    if not candidate["filename"].lower().endswith(".zip"):
        return None
    try:
        request = urllib.request.Request(candidate["url"], headers={"User-Agent": "free-daw-cask-discovery"})
        with urllib.request.urlopen(request, timeout=30) as response:
            data = response.read(100 * 1024 * 1024)
        with tempfile.NamedTemporaryFile(suffix=".zip") as archive:
            archive.write(data)
            archive.flush()
            with zipfile.ZipFile(archive.name) as zipped:
                entries = [(item.filename.rstrip("/"), item.is_dir()) for item in zipped.infolist() if item.filename.rstrip("/")]
        names = [name for name, is_dir in entries if not is_dir]
        formats = {"AU": (".component",), "VST": (".vst",), "VST3": (".vst3",), "CLAP": (".clap",)}
        suffixes = formats.get(candidate.get("format"), (".pkg", ".vst3", ".vst", ".component", ".clap"))
        bundle_roots = [name for name, is_dir in entries if is_dir and name.lower().endswith(suffixes)]
        for name, _ in entries:
            parts = name.split("/")
            for index, part in enumerate(parts):
                if part.lower().endswith(suffixes):
                    root = "/".join(parts[:index + 1])
                    if root not in bundle_roots:
                        bundle_roots.append(root)
        member = next((root for root in bundle_roots if root.lower().endswith(suffixes)), None)
        if member is None:
            member = next((name for name in names if name.lower().endswith(suffixes)), None)
        if member:
            # AU/VST bundles are directories in ZIP archives. Preserve files
            # beside the bundle, while moving the bundle carries its contents.
            parent = str(Path(member).parent)
            prefix = f"{parent}/" if parent != "." else ""
            related = [
                name for name in names
                if name != member
                and (name.startswith(prefix) if prefix else True)
                and not name.startswith(f"{member}/")
            ]
            print(f"Cask generator: {candidate['filename']} contains {member} and {len(related)} sibling file(s)", file=sys.stderr)
        else:
            print(f"Cask generator: no {candidate.get('format', 'plugin')} bundle found in {candidate['filename']}", file=sys.stderr)
        return (member, related, prefix) if member else None
    except Exception as error:
        print(f"warning: could not inspect {candidate['filename']}: {error}", file=sys.stderr)
        return None

def render(candidate):
    display = clean_name(candidate["name"])
    name = slug(display)
    if candidate.get("source") == "plugins4free" and candidate.get("format") in {"AU", "VST"}:
        name = f"{name}-{candidate['format'].lower()}"
    digest = candidate.get("digest", "")
    checksum = f'  sha256 "{digest}"' if re.fullmatch(r"[0-9a-f]{64}", digest) else "  sha256 :no_check"
    filename = candidate["filename"]
    if filename.lower().endswith(".pkg"):
        install = f'  pkg "{filename}"'
    elif filename.lower().endswith(".dmg"):
        install = f'  dmg "{filename}"'
    else:
        archive = archive_members(candidate)
        if not archive:
            return None, None
        bundle, related, prefix = archive
        if bundle.lower().endswith(".pkg"):
            install = f'  pkg "{bundle}"'
            return name, f'''cask "{name}" do
  version "{candidate.get("version", "latest")}"\n{checksum}
  url "{candidate["url"]}"
  name "{display}"
  desc "{candidate.get("description", "Free audio plugin")}"
  homepage "{candidate["homepage"]}"
  depends_on :macos
{install}
end
'''
        formats = {".vst3": "VST3", ".vst": "VST", ".component": "Components", ".clap": "CLAP"}
        extension = next((value for suffix, value in formats.items() if bundle.lower().endswith(suffix)), candidate.get("format", "VST3"))
        if extension == "AU":
            extension = "Components"
        if extension == "VST":
            extension = "VST"
        if not re.search(r"\.(vst3?|component|clap)$", bundle, re.I):
            bundle += {"VST": ".vst", "VST3": ".vst3", "Components": ".component", "AU": ".component", "CLAP": ".clap"}.get(extension, "")
        plugin_dir = f"Library/Audio/Plug-Ins/{extension}"
        bundle_target = f"{plugin_dir}/{Path(bundle).name}"
        resource_members = [member for member in related if member != bundle]
        # ZIP archives are staged as one tree. A single postflight step avoids
        # duplicate Generic Artifact staging paths while moving the bundle and
        # retaining adjacent sampler resources at the format directory level.
        install = f'''  postflight_steps do
    mkdir_p "{{{{user}}}}/{plugin_dir}"
    move "{bundle}", "{{{{user}}}}/{bundle_target}"
'''
        for member in resource_members:
            relative = member[len(prefix):] if prefix else member
            resource_target = f"{plugin_dir}/{relative}"
            resource_parent = str(Path(resource_target).parent)
            install += f'    mkdir_p "{{{{user}}}}/{resource_parent}"\n'
            install += f'    copy "{member}", "{{{{user}}}}/{resource_target}"\n'
        install += "  end"
    return name, f'''cask "{name}" do
  version "{candidate.get("version", "latest")}"
{checksum}
  url "{candidate["url"]}"
  name "{display}"
  desc "{candidate.get("description", "Free audio plugin")}"
  homepage "{candidate["homepage"]}"
  depends_on :macos
{install}
end
'''

def main():
    known = existing()
    created = []
    for candidate in json.load(sys.stdin):
        if "filename" not in candidate:
            continue
        name, content = render(candidate)
        if not name or name in known:
            continue
        (CASKS / f"{name}.rb").write_text(content)
        known.add(name)
        created.append(name)
    print(f"Cask generator: created {len(created)} casks: {', '.join(sorted(created)) or 'none'}", file=sys.stderr)

if __name__ == "__main__":
    main()

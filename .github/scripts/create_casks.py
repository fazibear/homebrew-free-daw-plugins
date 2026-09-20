#!/usr/bin/env python3
"""Create deduplicated casks from GitHub or Plugins4Free candidate JSON."""
import json
import re
import sys
import urllib.parse
import urllib.request
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
        bundle = re.sub(r"\.zip$", "", filename, flags=re.I)
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
        install = f'  artifact "{bundle}", target: "#{{Dir.home}}/Library/Audio/Plug-Ins/{extension}"'
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

#!/usr/bin/env python3
"""Create deduplicated casks from GitHub or Plugins4Free candidate JSON."""
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path

from .cask_utils import http_request

ROOT = Path(__file__).resolve().parents[2]
CASKS = ROOT / "Casks"
METADATA_DIRECTORIES = {"__MACOSX", ".fseventsd", ".Spotlight-V100", ".Trashes", ".TemporaryItems"}
METADATA_FILES = {".DS_Store", ".VolumeIcon.icns"}
PLUGIN_DIRS = {
    ".component": "Components",
    ".vst": "VST",
    ".vst3": "VST3",
    ".clap": "CLAP",
    ".lv2": "LV2",
}
PLUGIN_SUFFIXES_BY_FORMAT = {
    "AU": (".component",),
    "VST": (".vst",),
    "VST3": (".vst3",),
    "CLAP": (".clap",),
}
RESOURCE_FORMATS = {
    "au": "Components", "components": "Components", "component": "Components",
    "vst": "VST", "vst3": "VST3", "clap": "CLAP", "lv2": "LV2",
}

def slug(value):
    value = re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")
    return re.sub(r"-releases?$", "", value)[:50].rstrip("-")

def clean_name(value):
    value = re.sub(r"(?:[-_ ]+(?:vst3?|au|clap|lv2|plugin|plugins|audio|osx|macos|recompiled))+$", "", value, flags=re.I)
    return value.strip("-_ ")

def is_metadata_path(name):
    parts = Path(name).parts
    return (
        any(part in METADATA_DIRECTORIES for part in parts)
        or parts[-1] in METADATA_FILES
        or parts[-1].startswith("._")
    )

def existing():
    result = {path.stem for path in CASKS.glob("*.rb")}
    try:
        with http_request("https://formulae.brew.sh/api/cask.json", user_agent="free-daw-cask-discovery") as response:
            result |= {item["token"] for item in json.load(response)}
    except Exception as error:
        print(f"warning: Homebrew catalog unavailable: {error}", file=sys.stderr)
    return result

def archive_members(candidate, *, strict=False):
    filename = candidate["filename"].lower()
    if not (filename.endswith(".zip") or filename.endswith(".dmg")):
        return None
    try:
        with http_request(candidate["url"], user_agent="free-daw-cask-discovery") as response:
            with tempfile.TemporaryDirectory() as temporary:
                archive_path = Path(temporary) / candidate["filename"]
                with archive_path.open("wb") as archive_file:
                    shutil.copyfileobj(response, archive_file)
                if filename.endswith(".zip"):
                    with zipfile.ZipFile(archive_path) as zipped:
                        entries = [(item.filename.rstrip("/"), item.is_dir()) for item in zipped.infolist() if item.filename.rstrip("/")]
                else:
                    mountpoint = Path(temporary) / "mounted"
                    mountpoint.mkdir()
                    subprocess.run(
                        ["hdiutil", "attach", "-readonly", "-nobrowse", "-mountpoint", str(mountpoint), str(archive_path)],
                        check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True,
                    )
                    try:
                        entries = []
                        for root, directories, files in os.walk(mountpoint):
                            directories[:] = [directory for directory in directories if directory not in METADATA_DIRECTORIES]
                            relative_root = Path(root).relative_to(mountpoint)
                            entries.extend(((relative_root / directory).as_posix(), True) for directory in directories)
                            entries.extend(((relative_root / file).as_posix(), False) for file in files)
                    finally:
                        subprocess.run(["hdiutil", "detach", str(mountpoint)], check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        entries = [(name, is_dir) for name, is_dir in entries if not is_metadata_path(name)]
        names = [name for name, is_dir in entries if not is_dir]
        all_suffixes = tuple(PLUGIN_DIRS)
        app_suffixes = (".app",)
        bundle_suffixes = all_suffixes + app_suffixes
        suffixes = PLUGIN_SUFFIXES_BY_FORMAT.get(candidate.get("format"), all_suffixes)
        bundle_roots = []
        for name, is_dir in entries:
            if name.lower().endswith(".pkg"):
                bundle_roots.append(name)
            elif is_dir and name.lower().endswith(bundle_suffixes):
                bundle_roots.append(name)
            if not is_dir:
                parts = name.split("/")
                for index, part in enumerate(parts):
                    if part.lower().endswith(suffixes + bundle_suffixes + (".pkg",)):
                        root = "/".join(parts[:index + 1])
                        if root not in bundle_roots:
                            bundle_roots.append(root)
        if not bundle_roots:
            print(f"Cask generator: no {candidate.get('format', 'plugin')} bundle found in {candidate['filename']}", file=sys.stderr)
            return None

        # Keep top-level bundles as artifacts. A format bundle nested inside
        # an app or another plugin bundle belongs to that outer bundle.
        plugin_roots = [
            root for root in bundle_roots
            if root.lower().endswith(all_suffixes)
            and (candidate.get("source") != "plugins4free" or root.lower().endswith(suffixes))
        ]
        app_roots = [root for root in bundle_roots if root.lower().endswith(".app")]
        outermost_bundles = []
        for root in sorted(set(plugin_roots + app_roots), key=lambda path: (len(Path(path).parts), path)):
            if not any(root.startswith(f"{parent}/") for parent in outermost_bundles):
                outermost_bundles.append(root)
        bundle_paths = [root for root in outermost_bundles if root.lower().endswith(all_suffixes)]
        app_paths = [root for root in outermost_bundles if root.lower().endswith(".app")]
        package_paths = [root for root in bundle_roots if root.lower().endswith(".pkg")]
        print(
            f"Cask generator: {candidate['filename']} contains {len(bundle_paths)} plugin bundle(s) "
            f"{len(app_paths)} app bundle(s) and {len(package_paths)} package(s)",
            file=sys.stderr,
        )
        return {"bundles": bundle_paths, "apps": app_paths, "packages": package_paths}
    except Exception as error:
        message = f"could not inspect {candidate['filename']}: {error}"
        if isinstance(error, subprocess.CalledProcessError) and error.stderr:
            message += f"\n{error.stderr.strip()}"
        if strict:
            raise RuntimeError(message) from error
        print(f"warning: {message}", file=sys.stderr)
        return None

def render(candidate):
    display = clean_name(candidate["name"])
    name = slug(display)
    if candidate.get("source") == "plugins4free" and candidate.get("format") in {"AU", "VST"}:
        name = f"{name}-{candidate['format'].lower()}"
    elif candidate.get("source") == "bpb-freebies" and candidate.get("format") in {"AU", "VST", "VST3", "CLAP", "LV2"}:
        name = f"{name}-{candidate['format'].lower()}"
    digest = candidate.get("digest", "")
    checksum = f'  sha256 "{digest}"' if re.fullmatch(r"[0-9a-f]{64}", digest) else "  sha256 :no_check"
    filename = candidate["filename"]
    if filename.lower().endswith(".pkg"):
        install = f'  pkg "{filename}"'
    else:
        archive = candidate.get("archive_members")
        if archive is None and "archive_members" not in candidate:
            archive = archive_members(candidate)
        if not archive and filename.lower().endswith(".dmg"):
            archive = (filename, [], ".", None)
        if not archive:
            return None, None
        if isinstance(archive, tuple):
            bundle, _, _, _ = archive
            bundles = [bundle]
            apps = []
        else:
            bundles = archive.get("bundles", [])
            apps = archive.get("apps", [])
            packages = archive.get("packages", [])
            bundle = bundles[0] if bundles else (apps[0] if apps else (packages[0] if packages else ""))
        if bundle.lower().endswith(".pkg") and filename.lower().endswith(".pkg"):
            install = f'  pkg "{bundle}"'
        elif bundle.lower().endswith(".app") and not bundles and not packages:
            install = f'  app "{bundle}"'
        else:
            if candidate.get("source") == "plugins4free" and candidate.get("format") in {"AU", "VST"}:
                name = f"{slug(display)}-{candidate['format'].lower()}"
            if not bundles:
                extension = candidate.get("format", "VST3")
                suffix = {"AU": ".component", "VST": ".vst"}.get(extension, f".{extension.lower()}")
                bundles = [f"{filename}{suffix}"]
            install = "  postflight_steps do\n"
            for plugin_bundle in bundles:
                plugin_extension = Path(plugin_bundle).suffix.lower()
                extension = PLUGIN_DIRS.get(plugin_extension, candidate.get("format", "VST3"))
                plugin_dir = f"Library/Audio/Plug-Ins/{extension}"
                bundle_target = f"{plugin_dir}/{Path(plugin_bundle).name}"
                install += f'    mkdir_p "{{{{user}}}}/{plugin_dir}"\n'
                install += f'    copy "{plugin_bundle}", "{{{{user}}}}/{bundle_target}", recursive: true\n'
            for app_bundle in apps:
                app_target = f"Applications/{Path(app_bundle).name}"
                install += f'    mkdir_p "{{{{user}}}}/Applications"\n'
                install += f'    copy "{app_bundle}", "{{{{user}}}}/{app_target}", recursive: true\n'
            for package in packages:
                install += f'    system_command "installer", args: ["-pkg", "#{"staged_path"}/#{package}", "-target", "/"]\n'
            install += "  end"
    container = "  container type: :dmg\n" if filename.lower().endswith(".dmg") else ""
    return name, f'''cask "{name}" do
  version "{candidate.get("version", "latest")}"
{checksum}
  url "{candidate["url"]}"
  name "{display}"
  desc "{candidate.get("description", "Free audio plugin")}"
  homepage "{candidate["homepage"]}"
  depends_on :macos
{container}{install}
end
'''

def main():
    create_casks(json.load(sys.stdin))

def create_casks(candidates):
    known = existing()
    created = []
    for candidate in candidates:
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

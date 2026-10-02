#!/usr/bin/env python3
"""Create deduplicated casks from normalized candidate JSON."""
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
    ".aaxplugin": "AAX",
}
PLUGIN_SUFFIXES_BY_FORMAT = {
    "AU": (".component",),
    "VST": (".vst",),
    "VST3": (".vst3",),
    "CLAP": (".clap",),
    "LV2": (".lv2",),
    "AAX": (".aaxplugin",),
}
RESOURCE_FORMATS = {
    "au": "Components", "components": "Components", "component": "Components",
    "vst": "VST", "vst3": "VST3", "clap": "CLAP", "lv2": "LV2", "aax": "AAX",
}

def slug(value):
    value = re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")
    return re.sub(r"-releases?$", "", value)[:50].rstrip("-")

def clean_name(value):
    value = re.sub(r"(?:[-_ ]+(?:vst3?|au|clap|lv2|aax|plugin|plugins|audio|osx|macos|recompiled))+$", "", value, flags=re.I)
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

def unsigned_plugin_bundles(entries, directory):
    """Inspect downloaded plugin signatures while their files are available."""
    roots = set()
    for name, _ in entries:
        if is_metadata_path(name):
            continue
        parts = Path(name).parts
        if Path(name).is_absolute() or ".." in parts:
            raise ValueError(f"unsafe archive path: {name}")
        for index, part in enumerate(parts):
            if part.lower().endswith(tuple(PLUGIN_DIRS)):
                roots.add(Path(*parts[:index + 1]).as_posix())
                break
    unsigned = []
    for root in sorted(roots):
        result = subprocess.run(
            ["/usr/bin/codesign", "--display", str(directory / root)],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True,
        )
        if result.returncode == 0:
            continue
        if "code object is not signed at all" in result.stderr:
            unsigned.append(root)
        else:
            raise RuntimeError(f"could not check signature of {root}: {result.stderr.strip()}")
    return unsigned

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
                unsigned_bundles = []
                if filename.endswith(".zip"):
                    with zipfile.ZipFile(archive_path) as zipped:
                        entries = [(item.filename.rstrip("/"), item.is_dir()) for item in zipped.infolist() if item.filename.rstrip("/")]
                    for name, _ in entries:
                        if Path(name).is_absolute() or ".." in Path(name).parts:
                            raise ValueError(f"unsafe archive path: {name}")
                    extracted = Path(temporary) / "extracted"
                    subprocess.run(
                        ["/usr/bin/ditto", "-x", "-k", str(archive_path), str(extracted)],
                        check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True,
                    )
                    unsigned_bundles = unsigned_plugin_bundles(entries, extracted)
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
                        unsigned_bundles = unsigned_plugin_bundles(entries, mountpoint)
                    finally:
                        subprocess.run(["hdiutil", "detach", str(mountpoint)], check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        entries = [(name, is_dir) for name, is_dir in entries if not is_metadata_path(name)]
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
        plugin_roots = [root for root in bundle_roots if root.lower().endswith(all_suffixes)]
        if candidate.get("format") in PLUGIN_SUFFIXES_BY_FORMAT:
            matching_roots = [root for root in plugin_roots if root.lower().endswith(suffixes)]
            if matching_roots:
                plugin_roots = matching_roots
            elif plugin_roots:
                print(
                    f"Cask generator: {candidate['filename']} is advertised as "
                    f"{candidate.get('format', 'plugin')} but contains "
                    f"{', '.join(sorted({Path(root).suffix for root in plugin_roots}))}; "
                    "using the actual plugin bundles",
                    file=sys.stderr,
                )
        app_roots = [root for root in bundle_roots if root.lower().endswith(".app")]
        outermost_bundles = []
        for root in sorted(set(plugin_roots + app_roots), key=lambda path: (len(Path(path).parts), path)):
            if not any(root.startswith(f"{parent}/") for parent in outermost_bundles):
                outermost_bundles.append(root)
        bundle_paths = [root for root in outermost_bundles if root.lower().endswith(all_suffixes)]
        app_paths = [root for root in outermost_bundles if root.lower().endswith(".app")]
        package_paths = [root for root in bundle_roots if root.lower().endswith(".pkg")]
        if package_paths:
            print(
                f"Cask generator: {candidate['filename']} contains {len(package_paths)} package(s); "
                "using the first package as the installer",
                file=sys.stderr,
            )
            return (package_paths[0], [], str(Path(package_paths[0]).parent), None)
        print(
            f"Cask generator: {candidate['filename']} contains {len(bundle_paths)} plugin bundle(s) "
            f"{len(app_paths)} app bundle(s) and {len(package_paths)} package(s)",
            file=sys.stderr,
        )
        return {"bundles": bundle_paths, "apps": app_paths, "packages": package_paths,
                "unsigned_bundles": [path for path in bundle_paths if path in unsigned_bundles]}
    except Exception as error:
        message = f"could not inspect {candidate['filename']}: {error}"
        if isinstance(error, subprocess.CalledProcessError) and error.stderr:
            message += f"\n{error.stderr.strip()}"
        if strict:
            raise RuntimeError(message) from error
        print(f"warning: {message}", file=sys.stderr)
        return None

def unique_install_bundles(paths):
    """Choose one architecture variant for each case-insensitive destination."""
    groups = {}
    for path in sorted(set(paths)):
        groups.setdefault(Path(path).name.casefold(), []).append(path)
    selected = []
    for variants in groups.values():
        if len(variants) == 1:
            selected.extend(variants)
            continue

        def preference(path):
            if re.search(r"(?:^|[/ _-])universal2?(?:$|[/ _.-])", path, re.I):
                return 3
            if re.search(r"(?:^|[/ _-])(?:x64|x86_64|amd64|arm64|aarch64|64bit)(?:$|[/ _.-])", path, re.I):
                return 2
            if re.search(r"(?:^|[/ _-])(?:x86|i386|32bit)(?:$|[/ _.-])", path, re.I):
                return 0
            return 1

        best = max(map(preference, variants))
        winners = [path for path in variants if preference(path) == best]
        if len(winners) != 1:
            raise ValueError(f"ambiguous bundles share an install destination: {', '.join(variants)}")
        selected.extend(winners)
        print(f"Cask generator: selecting {winners[0]} instead of duplicate variants "
              f"{', '.join(path for path in variants if path != winners[0])}", file=sys.stderr)
    return selected


def render(candidate):
    quarantine_steps = []
    display = clean_name(candidate["name"])
    name = slug(display)
    if candidate.get("format") in PLUGIN_SUFFIXES_BY_FORMAT:
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
        if not archive:
            return None, None
        unsigned_bundles = archive.get("unsigned_bundles", []) if isinstance(archive, dict) else []
        if isinstance(archive, tuple):
            bundle, _, _, _ = archive
            if not bundle.lower().endswith(tuple(PLUGIN_DIRS) + (".app", ".pkg")):
                return None, None
            bundles = [] if bundle.lower().endswith((".app", ".pkg")) else [bundle]
            apps = [bundle] if bundle.lower().endswith(".app") else []
            packages = [bundle] if bundle.lower().endswith(".pkg") else []
        else:
            bundles = unique_install_bundles(archive.get("bundles", []))
            apps = unique_install_bundles(archive.get("apps", []))
            packages = archive.get("packages", [])
            bundle = bundles[0] if bundles else (apps[0] if apps else (packages[0] if packages else ""))
        if not bundle:
            print(f"Cask generator: no installable artifact found in {filename}", file=sys.stderr)
            return None, None
        if bundle.lower().endswith(".pkg"):
            install = f'  pkg "{bundle}"'
        elif bundle.lower().endswith(".app") and not bundles and not packages:
            install = f'  app "{bundle}"'
        else:
            artifacts = []
            for plugin_bundle in bundles:
                plugin_extension = Path(plugin_bundle).suffix.lower()
                extension = PLUGIN_DIRS.get(plugin_extension, candidate.get("format", "VST3"))
                if plugin_extension == ".aaxplugin":
                    target = f"/Library/Application Support/Avid/Audio/Plug-Ins/{Path(plugin_bundle).name}"
                else:
                    target = f"#{{Dir.home}}/Library/Audio/Plug-Ins/{extension}/{Path(plugin_bundle).name}"
                artifacts.append(f'  artifact "{plugin_bundle}", target: "{target}"')
                if plugin_bundle in unsigned_bundles:
                    sudo = ', sudo: true' if plugin_extension == ".aaxplugin" else ''
                    quarantine_steps.append(
                        f'    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "{target}"]'
                        f'{sudo}, writable_paths: ["{target}"]'
                    )
            for app_bundle in apps:
                artifacts.append(f'  app "{app_bundle}", target: "#{{Dir.home}}/Applications/{Path(app_bundle).name}"')
            install = "\n".join(artifacts)
    container = "  container type: :dmg\n" if filename.lower().endswith(".dmg") else ""
    postflight = ""
    if quarantine_steps:
        postflight = "\n\n  postflight_steps do\n" + "\n".join(quarantine_steps) + "\n  end"
    return name, f'''cask "{name}" do
  version "{candidate.get("version", "latest")}"
{checksum}
  url "{candidate["url"]}"
  name "{display}"
  desc "{candidate.get("description", "Free audio plugin")}"
  homepage "{candidate["homepage"]}"
  depends_on :macos
{container}{install}{postflight}
end
'''

def main():
    create_casks(json.load(sys.stdin))

def create_casks(candidates):
    known = existing()
    created = []
    skipped_existing = []
    unsupported = []
    for candidate in candidates:
        if "filename" not in candidate:
            unsupported.append(candidate.get("name", "unnamed candidate"))
            continue
        name, content = render(candidate)
        if not name or name in known:
            if name:
                skipped_existing.append(name)
            else:
                unsupported.append(candidate["filename"])
            reason = "no installable plugin, app, or package found" if not name else f"{name} already exists locally or in Homebrew"
            print(f"Cask generator: skipped {candidate['filename']}: {reason}", file=sys.stderr)
            continue
        (CASKS / f"{name}.rb").write_text(content)
        known.add(name)
        created.append(name)
    print(f"Cask generator: created {len(created)} casks: {', '.join(sorted(created)) or 'none'}", file=sys.stderr)
    return {"created": created, "existing": skipped_existing, "unsupported": unsupported}

if __name__ == "__main__":
    main()

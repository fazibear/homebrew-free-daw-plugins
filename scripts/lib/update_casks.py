#!/usr/bin/env python3
"""Update versioned casks from GitHub releases or product download pages."""
import hashlib
import re
import sys
import urllib.parse
from pathlib import Path

from .cask_utils import (
    github_json,
    github_repository,
    http_request,
    macos_installer_assets,
    preserve_cask_token,
    stanza,
)
from .create_casks import render


def version_numbers(value):
    match = re.fullmatch(r"[vV]?(\d+(?:\.\d+)*)(?:-([0-9A-Za-z.-]+))?(?:\+[0-9A-Za-z.-]+)?", value)
    if not match:
        return None
    numbers = tuple(map(int, match.group(1).split(".")))
    return numbers, match.group(2)


def newer_version(current, latest):
    old_numbers = version_numbers(current)
    new_numbers = version_numbers(latest)
    if not old_numbers or not new_numbers:
        return False
    old_core, old_prerelease = old_numbers
    new_core, new_prerelease = new_numbers
    size = max(len(old_core), len(new_core))
    old_core += (0,) * (size - len(old_core))
    new_core += (0,) * (size - len(new_core))
    if old_core != new_core:
        return old_core < new_core
    return old_prerelease is not None and new_prerelease is None


def sha256(url):
    digest = hashlib.sha256()
    with http_request(url, user_agent="free-daw-cask-updater", timeout=60) as response:
        while chunk := response.read(1024 * 1024):
            digest.update(chunk)
    return digest.hexdigest()


def release_asset(release, old_url):
    old_suffix = Path(urllib.parse.urlparse(old_url).path).suffix.lower()
    assets = macos_installer_assets(release)
    if old_suffix:
        matching = [asset for asset in assets if asset["name"].lower().endswith(old_suffix)]
        if matching:
            assets = matching
    return assets[0] if assets else None


def update_download(path, *, check_latest=False):
    """Regenerate non-versioned and non-GitHub casks with the shared renderer."""
    source = path.read_text()
    homepage = stanza(source, "homepage", required=True)
    if re.fullmatch(r"https://(?:www\.)?plugins4free\.com/plugin/[A-Za-z0-9_-]+/?", homepage):
        from .regenerate_casks import candidate_for
        candidate = candidate_for(path)
        current = stanza(source, "version") or "latest"
        match = re.search(r"(?<!\d)(\d+(?:\.\d+)+)(?!\d)", candidate["filename"])
        if current != "latest":
            candidate["version"] = match.group(1) if match else current
    else:
        version = stanza(source, "version") or "latest"
        url = stanza(source, "url", required=True).replace("#{version}", version)
        if "#{" in url:
            return "skip", "unsupported URL interpolation"
        filename = Path(urllib.parse.unquote(urllib.parse.urlparse(url).path)).name
        if not filename.lower().endswith((".zip", ".dmg", ".pkg")):
            return "skip", "download URL has no supported archive or installer filename"
        candidate = {
            "name": stanza(source, "name", required=True),
            "description": stanza(source, "desc", required=True),
            "homepage": homepage, "url": url, "filename": filename,
            "version": version, "digest": stanza(source, "sha256") or "",
        }
        if check_latest:
            from .plugin_downloads import find_product_download
            verified = find_product_download(homepage, candidate["name"])
            if verified:
                match = re.search(r"(?<!\d)(\d+(?:\.\d+)+)(?!\d)", verified["filename"])
                found_version = match.group(1) if match else None
                if verified["url"] != url and not found_version:
                    return "skip", "homepage download has no identifiable release version; cannot replace a pinned version"
                if found_version and version_numbers(version) and version_numbers(found_version) and newer_version(found_version, version):
                    return "current", f"current version {version} is newer than the homepage download {found_version}"
                if verified["url"] != url:
                    candidate["digest"] = ""
                candidate["url"] = verified["url"]
                candidate["filename"] = verified["filename"]
                if found_version:
                    candidate["version"] = found_version
                filename = candidate["filename"]
                url = candidate["url"]
        if filename.lower().endswith(".pkg"):
            from .plugin_downloads import file_metadata, find_product_download
            try:
                verified = file_metadata(url)
            except Exception:
                verified = None
            if not verified:
                verified = find_product_download(homepage, candidate["name"])
                if not verified:
                    return "skip", "installer URL is invalid and no verified product download was found on its homepage"
                candidate["url"] = verified["url"]
                candidate["filename"] = verified["filename"]
                candidate["digest"] = ""
                match = re.search(r"(?<!\d)(\d+(?:\.\d+)+)(?!\d)", verified["filename"])
                candidate["version"] = match.group(1) if match else "latest"
    token, content = render(candidate)
    if not token or not content:
        return "skip", "download contains no supported plugin, app, or package"
    content = preserve_cask_token(content, path.stem)
    if content == source:
        return "current", "shared renderer produces no cask change"
    path.write_text(content)
    return "updated", f"regenerated from {candidate['filename']}"


def update(path, *, regenerate=False, all_casks=False):
    source = path.read_text()
    current = stanza(source, "version")
    homepage = stanza(source, "homepage")
    old_url = stanza(source, "url")
    name = stanza(source, "name")
    description = stanza(source, "desc")
    repository = github_repository(old_url or "") or github_repository(homepage or "")
    if all_casks and (
        not current or current == "latest" or not repository or "github.com/" not in (old_url or "")
    ):
        return update_download(path)
    if not current or current == "latest":
        return "skip", "version is latest or missing"
    if not repository or "github.com/" not in (old_url or ""):
        return update_download(path, check_latest=True)

    release = github_json(f"https://api.github.com/repos/{repository}/releases/latest")
    latest = re.sub(r"^v", "", release.get("tag_name") or "", flags=re.I)
    if not latest:
        return "skip", "GitHub returned no latest release tag"
    if version_numbers(current) is None or version_numbers(latest) is None:
        if all_casks:
            return update_download(path)
        return "skip", f"could not compare versions current={current}, latest={latest}"
    if newer_version(latest, current) and not regenerate:
        return "current", f"current version {current} is newer than release tag {latest}"

    asset = release_asset(release, old_url)
    if not asset:
        return "skip", f"no macOS installer asset in release {release.get('tag_name', '')}"
    digest = (asset.get("digest") or "").removeprefix("sha256:")
    if not re.fullmatch(r"[0-9a-f]{64}", digest):
        digest = sha256(asset["browser_download_url"])

    candidate = {
        "name": name,
        "description": description,
        "homepage": homepage,
        "url": asset["browser_download_url"],
        "filename": asset["name"],
        "version": latest,
        "digest": digest,
        "source": "github",
    }
    token, content = render(candidate)
    if not token or not content:
        return "skip", f"could not generate a cask from release asset {asset['name']}"
    if token != path.stem:
        format_tokens = {f"{token}-{suffix}" for suffix in ("au", "vst", "vst3", "clap", "lv2")}
        if not all_casks and path.stem not in format_tokens:
            return "skip", f"generated cask token {token} differs from existing token {path.stem}"
        try:
            content = preserve_cask_token(content, path.stem)
        except ValueError:
            return "skip", f"could not preserve existing cask token {path.stem}"
    if content == source:
        return "current", f"latest release {latest} produces no cask change"
    path.write_text(content)
    return "updated", f"{current} -> {latest} ({asset['name']})"


def main():
    updated = []
    counts = {"updated": 0, "current": 0, "skip": 0, "error": 0}
    paths = [Path(argument) for argument in sys.argv[1:]] or sorted(Path("Casks").glob("*.rb"))
    for path in paths:
        current = stanza(path.read_text(), "version")
        if not current or current == "latest":
            continue
        print(f"Checking {path.stem} ({current})...")
        try:
            status, detail = update(path)
        except Exception as error:
            status, detail = "error", str(error)
        counts[status] += 1
        print(f"  {status}: {detail}")
        if status == "updated":
            updated.append(path.stem)

    print(
        f"Scan complete: {counts['updated']} updated, {counts['current']} current, "
        f"{counts['skip']} unsupported, {counts['error']} errors."
    )
    if updated:
        print("Updated casks: " + ", ".join(updated))


if __name__ == "__main__":
    main()

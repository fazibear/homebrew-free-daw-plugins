#!/usr/bin/env python3
"""Update versioned GitHub casks from their repositories' latest releases."""
import hashlib
import json
import os
import re
import sys
import urllib.parse
import urllib.request
from pathlib import Path

from create_casks import render


def stanza(source, name):
    match = re.search(rf'^  {re.escape(name)} "([^"]*)"$', source, re.M)
    return match.group(1) if match else None


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


def github_repository(homepage):
    parsed = urllib.parse.urlparse(homepage)
    if parsed.netloc.lower() != "github.com":
        return None
    parts = [part for part in parsed.path.split("/") if part]
    return "/".join(parts[:2]) if len(parts) >= 2 else None


def get_json(url):
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "free-daw-cask-updater",
    }
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"
    request = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


def sha256(url):
    request = urllib.request.Request(url, headers={"User-Agent": "free-daw-cask-updater"})
    digest = hashlib.sha256()
    with urllib.request.urlopen(request, timeout=60) as response:
        while chunk := response.read(1024 * 1024):
            digest.update(chunk)
    return digest.hexdigest()


def release_asset(release, old_url):
    old_suffix = Path(urllib.parse.urlparse(old_url).path).suffix.lower()
    assets = [
        asset for asset in release.get("assets", [])
        if asset["name"].lower().endswith((".pkg", ".dmg", ".zip"))
        and any(marker in asset["name"].lower() for marker in ("mac", "macos", "darwin", "osx", "universal"))
    ]
    if old_suffix:
        matching = [asset for asset in assets if asset["name"].lower().endswith(old_suffix)]
        if matching:
            assets = matching
    return assets[0] if assets else None


def update(path):
    source = path.read_text()
    current = stanza(source, "version")
    homepage = stanza(source, "homepage")
    old_url = stanza(source, "url")
    name = stanza(source, "name")
    description = stanza(source, "desc")
    repository = github_repository(homepage or "")
    if not current or current == "latest":
        return "skip", "version is latest or missing"
    if not repository or "github.com/" not in (old_url or ""):
        return "skip", "no GitHub release download source"

    release = get_json(f"https://api.github.com/repos/{repository}/releases/latest")
    latest = re.sub(r"^v", "", release.get("tag_name") or "", flags=re.I)
    if not latest:
        return "skip", "GitHub returned no latest release tag"
    if version_numbers(current) is None or version_numbers(latest) is None:
        return "skip", f"could not compare versions current={current}, latest={latest}"
    if newer_version(latest, current):
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
        return "skip", f"generated cask token {token} differs from existing token {path.stem}"
    if content == source:
        return "current", f"latest release {latest} produces no cask change"
    path.write_text(content)
    return "updated", f"{current} -> {latest} ({asset['name']})"


def main():
    updated = []
    counts = {"updated": 0, "current": 0, "skip": 0, "error": 0}
    for path in sorted(Path("Casks").glob("*.rb")):
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

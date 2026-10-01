"""Shared helpers for cask automation scripts."""
import json
import os
import re
import urllib.parse
import urllib.request


def http_request(url, *, user_agent, timeout=30):
    request = urllib.request.Request(url, headers={"User-Agent": user_agent})
    return urllib.request.urlopen(request, timeout=timeout)


def preserve_cask_token(content, token):
    content, replacements = re.subn(
        r'^cask "[^"]+" do$',
        f'cask "{token}" do',
        content,
        count=1,
        flags=re.M,
    )
    if replacements != 1:
        raise ValueError(f"could not preserve existing cask token {token}")
    return content


def macos_installer_assets(release, *, require_platform_marker=True):
    markers = ("mac", "macos", "darwin", "osx", "universal")
    suffixes = (".pkg", ".dmg", ".zip")
    return [
        asset for asset in release.get("assets", [])
        if asset["name"].lower().endswith(suffixes)
        and (
            not require_platform_marker
            and asset["name"].lower().endswith((".pkg", ".dmg"))
            or any(marker in asset["name"].lower() for marker in markers)
        )
    ]


def stanza(source, name, *, required=False):
    match = re.search(rf'^  {re.escape(name)} "([^"]*)"$', source, re.M)
    if match:
        return match.group(1)
    if required:
        raise ValueError(f"missing {name} stanza")
    return None


def github_repository(homepage):
    parsed = urllib.parse.urlparse(homepage)
    if parsed.netloc.lower() != "github.com":
        return None
    parts = [part for part in parsed.path.split("/") if part]
    return "/".join(parts[:2]) if len(parts) >= 2 else None


def github_json(url):
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "free-daw-cask-automation",
    }
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"
    request = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)

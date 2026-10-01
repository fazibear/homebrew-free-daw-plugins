"""Shared helpers for cask automation scripts."""
import json
import os
import re
import urllib.parse
import urllib.request


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

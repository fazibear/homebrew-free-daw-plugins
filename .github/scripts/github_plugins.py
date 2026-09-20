#!/usr/bin/env python3
"""Discover macOS plugin release candidates from GitHub."""
import json
import os
import sys
import urllib.parse
import urllib.request

TOKEN = os.environ.get("GITHUB_TOKEN", "")
HEADERS = {"Accept": "application/vnd.github+json", "User-Agent": "free-daw-cask-discovery"}
if TOKEN:
    HEADERS["Authorization"] = f"Bearer {TOKEN}"

def get(url):
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)

def main():
    repositories = {}
    for query in ("topic:audio-plugin macos", "topic:vst3 macos", "topic:clap-plugin macos", "topic:lv2 macos"):
        params = urllib.parse.urlencode({"q": query, "sort": "updated", "per_page": 30})
        for repo in get(f"https://api.github.com/search/repositories?{params}").get("items", []):
            repositories[repo["full_name"]] = repo
    candidates = []
    for repo in repositories.values():
        try:
            release = get(f'https://api.github.com/repos/{repo["full_name"]}/releases/latest')
        except Exception:
            continue
        assets = [asset for asset in release.get("assets", [])
                  if any(x in asset["name"].lower() for x in ("mac", "macos", "darwin", "osx", "universal"))
                  and asset["name"].lower().endswith((".pkg", ".dmg"))]
        if not assets:
            continue
        asset = assets[0]
        candidates.append({
            "name": repo["name"],
            "homepage": f'https://github.com/{repo["full_name"]}',
            "version": release.get("tag_name", "latest").lstrip("v"),
            "url": asset["browser_download_url"],
            "filename": asset["name"],
            "digest": (asset.get("digest") or "").removeprefix("sha256:"),
        })
    print(f"GitHub: found {len(repositories)} repositories and {len(candidates)} macOS release candidates", file=sys.stderr)
    print(json.dumps(candidates))

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Discover macOS plugin release candidates from GitHub."""
import json
import random
import sys
import urllib.parse

from .cask_utils import github_json, macos_installer_assets

def candidate_from_repository(repo):
    print(f"GitHub: checking {repo['full_name']}", file=sys.stderr)
    try:
        release = github_json(f'https://api.github.com/repos/{repo["full_name"]}/releases/latest')
    except Exception:
        print(f"GitHub: no accessible latest release for {repo['full_name']}", file=sys.stderr)
        return None
    assets = macos_installer_assets(release, require_platform_marker=False)
    if not assets:
        print(f"GitHub: no macOS installer for {repo['full_name']}", file=sys.stderr)
        return None
    asset = assets[0]
    print(f"GitHub: accepted {repo['full_name']} ({asset['name']})", file=sys.stderr)
    return {
        "name": repo["name"],
        "homepage": f'https://github.com/{repo["full_name"]}',
        "version": release.get("tag_name", "latest").lstrip("v"),
        "url": asset["browser_download_url"],
        "filename": asset["name"],
        "digest": (asset.get("digest") or "").removeprefix("sha256:"),
        "source": "github",
    }


def discover():
    repositories = {}
    for query in ("topic:audio-plugin macos", "topic:vst3 macos", "topic:clap-plugin macos"):
        print(f"GitHub: searching {query}", file=sys.stderr)
        probe_params = urllib.parse.urlencode({"q": query, "sort": "updated", "per_page": 1, "page": 1})
        probe = github_json(f"https://api.github.com/search/repositories?{probe_params}")
        total = probe.get("total_count", 0)
        pages = max(1, min(100, (total + 9) // 10))
        page = random.randint(1, pages)
        print(f"GitHub: found {total} results across {pages} pages; requesting page {page}", file=sys.stderr)
        params = urllib.parse.urlencode({"q": query, "sort": "updated", "per_page": 10, "page": page})
        for repo in github_json(f"https://api.github.com/search/repositories?{params}").get("items", []):
            repositories[repo["full_name"]] = repo
    print(f"GitHub: found {len(repositories)} unique repositories", file=sys.stderr)
    candidates = []
    for repo in repositories.values():
        candidate = candidate_from_repository(repo)
        if candidate:
            candidates.append(candidate)
    print(f"GitHub: found {len(repositories)} repositories and {len(candidates)} macOS release candidates", file=sys.stderr)
    return candidates


def main():
    print(json.dumps(discover()))

if __name__ == "__main__":
    main()

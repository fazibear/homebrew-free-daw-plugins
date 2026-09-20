#!/usr/bin/env python3
"""Discover conservative macOS installer candidates from GitHub releases."""

import json
import os
import re
import sys
import urllib.parse
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CASKS = ROOT / "Casks"
TOKEN = os.environ.get("GITHUB_TOKEN", "")
HEADERS = {"Accept": "application/vnd.github+json", "User-Agent": "cask-discovery"}
if TOKEN:
    HEADERS["Authorization"] = f"Bearer {TOKEN}"


def get(url):
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


def search_web(query):
    params = urllib.parse.urlencode({"q": query})
    request = urllib.request.Request(
        f"https://html.duckduckgo.com/html/?{params}",
        headers={"User-Agent": "Mozilla/5.0 (compatible; cask-discovery/1.0)"},
    )
    with urllib.request.urlopen(request, timeout=30) as response:
        html = response.read(2_000_000).decode("utf-8", "ignore")
    results = []
    for match in re.finditer(r'class="result__a"[^>]+href="([^"]+)"[^>]*>(.*?)</a>', html, re.I | re.S):
        result_url = urllib.parse.unquote(match.group(1))
        result_url = re.search(r"uddg=([^&]+)", result_url)
        result_url = result_url.group(1) if result_url else match.group(1)
        title = re.sub(r"<[^>]+>", "", match.group(2)).strip()
        results.append({"url": result_url, "title": title})
    return results


def slug(value):
    value = re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")
    return re.sub(r"-releases?$", "", value)[:50].rstrip("-")


def existing_names():
    names = set()
    for path in CASKS.glob("*.rb"):
        match = re.search(r'^cask\s+"([^"]+)"', path.read_text())
        names.add(match.group(1) if match else path.stem)
    return names


def homebrew_names():
    try:
        request = urllib.request.Request(
            "https://formulae.brew.sh/api/cask.json",
            headers={"User-Agent": "cask-discovery"},
        )
        with urllib.request.urlopen(request, timeout=30) as response:
            return {item["token"] for item in json.load(response)}
    except Exception as error:
        print(f"warning: could not read Homebrew cask catalog: {error}", file=sys.stderr)
        return set()


def installer_asset(release):
    mac = re.compile(r"(mac|macos|darwin|osx|universal)", re.I)
    installer = re.compile(r"\.(pkg|dmg)$", re.I)
    return next((asset for asset in release.get("assets", [])
                 if mac.search(asset["name"]) and installer.search(asset["name"])), None)


def web_installer(result):
    url = result.get("url", "")
    if re.search(r"\.(pkg|dmg)(\?|$)", url, re.I):
        return url, url.rsplit("/", 1)[-1].split("?", 1)[0]
    try:
        request = urllib.request.Request(url, headers={"User-Agent": "cask-discovery"})
        with urllib.request.urlopen(request, timeout=15) as response:
            html = response.read(500_000).decode("utf-8", "ignore")
    except Exception:
        return None
    links = re.findall(r'''href=["']([^"']+)["']''', html, re.I)
    for link in links:
        absolute = urllib.parse.urljoin(url, link)
        if re.search(r"(mac|macos|darwin|osx|universal)", absolute, re.I) and re.search(r"\.(pkg|dmg)(\?|$)", absolute, re.I):
            return absolute, absolute.rsplit("/", 1)[-1].split("?", 1)[0]
    return None


def render(name, display, homepage, version, asset_url, filename, digest=""):
    checksum = f'  sha256 "{digest}"' if re.fullmatch(r"[0-9a-f]{64}", digest) else "  sha256 :no_check"
    install = f'  pkg "{filename}"' if filename.lower().endswith(".pkg") else f'  dmg "{filename}"'
    return name, f'''cask "{name}" do
  version "{version}"
{checksum}
  url "{asset_url}"
  name "{display}"
  desc "Free audio plugin"
  homepage "{homepage}"
  depends_on :macos
{install}
end
'''


def main():
    repositories = {}
    for query in ("topic:audio-plugin macos", "topic:vst3 macos", "topic:clap-plugin macos", "topic:lv2 macos"):
        params = urllib.parse.urlencode({"q": query, "sort": "updated", "per_page": 30})
        for repo in get(f"https://api.github.com/search/repositories?{params}").get("items", []):
            repositories[repo["full_name"]] = repo

    web_results = []
    for query in (
        'free audio plugin macOS VST3 AU download',
        'free synthesizer plugin macOS download',
        'free audio effect plugin macOS installer',
    ):
        web_results.extend(search_web(query))

    existing = existing_names() | homebrew_names()
    created = []
    for repo in repositories.values():
        try:
            release = get(f'https://api.github.com/repos/{repo["full_name"]}/releases/latest')
        except Exception:
            continue
        asset = installer_asset(release)
        if not asset:
            continue
        name, content = render(slug(repo["name"]), re.sub(r"[-_]+", " ", repo["name"]).strip().title(),
                               f'https://github.com/{repo["full_name"]}', release.get("tag_name", "latest").lstrip("v"),
                               asset["browser_download_url"], asset["name"], (asset.get("digest") or "").removeprefix("sha256:"))
        if name in existing:
            continue
        (CASKS / f"{name}.rb").write_text(content)
        existing.add(name)
        created.append(name)

    for result in web_results:
        found = web_installer(result)
        if not found:
            continue
        asset_url, filename = found
        title = result.get("title", "Audio Plugin").split(" - ")[0].strip()
        title = re.sub(r"\s*[·|]\s*(releases?|github|download).*$", "", title, flags=re.I).strip()
        title = re.sub(r"\s+releases?$", "", title, flags=re.I).strip()
        if title.lower() in {"releases", "release", "github", "download", "audio plugin"}:
            continue
        name = slug(title)
        if not name or name in existing:
            continue
        name, content = render(name, title, result.get("url", ""), "latest", asset_url, filename)
        (CASKS / f"{name}.rb").write_text(content)
        existing.add(name)
        created.append(name)
    print(f"Created {len(created)} casks: {', '.join(sorted(created)) or 'none'}")


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print(f"discovery failed: {error}", file=sys.stderr)
        sys.exit(1)

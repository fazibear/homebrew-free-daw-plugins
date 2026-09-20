#!/usr/bin/env python3
"""Discover macOS plugin pages from Plugins4Free."""
import json
import re
import sys
import urllib.parse
import urllib.request
from html.parser import HTMLParser

DIRECTORY = "https://plugins4free.com/instruments?sort=random&os%5B%5D=allmacos&ajax=1"


class DownloadLinkParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.links = []
        self.anchor = None
        self.download_name_depth = 0
        self.download_name_text = []

    def handle_starttag(self, tag, attrs):
        if tag.lower() == "a":
            attributes = dict(attrs)
            if "download-item" in attributes.get("class", "").split():
                self.anchor = {"title": re.sub(r"\s+", " ", attributes.get("title", "")).strip(), "onclick": attributes.get("onclick", ""), "href": attributes.get("href", "")}
                self.download_name_depth = 0
                self.download_name_text = []
        elif self.anchor and "download-name" in dict(attrs).get("class", "").split():
            self.download_name_depth = 1

    def handle_data(self, data):
        if self.anchor and self.download_name_depth:
            self.download_name_text.append(data)

    def handle_endtag(self, tag):
        if not self.anchor:
            return
        if tag.lower() == "a":
            match = re.search(r"startDownload\s*\(\s*event\s*,\s*[^,]+,\s*['\"]([^'\"]+)['\"]", self.anchor["onclick"], re.I)
            link_title = re.sub(r"\s+", " ", " ".join([self.anchor["title"], *self.download_name_text])).strip()
            file_name = match.group(1) if match else self.anchor["href"]
            if file_name and file_name != "#":
                self.links.append((link_title, file_name))
            self.anchor = None
            self.download_name_depth = 0
            self.download_name_text = []

def main():
    print(f"Plugins4Free: fetching directory {DIRECTORY}", file=sys.stderr)
    request = urllib.request.Request(DIRECTORY, headers={"User-Agent": "Mozilla/5.0 (free-daw-cask-discovery)"})
    with urllib.request.urlopen(request, timeout=30) as response:
        html = response.read(2_000_000).decode("utf-8", "ignore")
    try:
        payload = json.loads(html)
        html = payload.get("html", html)
    except json.JSONDecodeError:
        pass
    pages = 0
    candidates = []
    for match in re.finditer(r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(.*?)</a>', html, re.I | re.S):
        url = urllib.parse.urljoin(DIRECTORY, match.group(1))
        title = re.sub(r"<[^>]+>", "", match.group(2)).strip()
        title = re.sub(r"\s+", " ", title)
        if not re.search(r"/plugin/[A-Za-z0-9_-]+/?$", urllib.parse.urlparse(url).path, re.I) or not title:
            continue
        pages += 1
        print(f"Plugins4Free: fetching {url}", file=sys.stderr)
        try:
            page_request = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0 (free-daw-cask-discovery)"})
            with urllib.request.urlopen(page_request, timeout=15) as page_response:
                page = page_response.read(500_000).decode("utf-8", "ignore")
        except Exception:
            continue
        parser = DownloadLinkParser()
        parser.feed(page)
        mac_links = [(link_title, file_name) for link_title, file_name in parser.links if re.search(r"(?:Mac(?:intosh)?\s*(?:OS\s*)?X|OSX)", link_title, re.I)]
        print(f"Plugins4Free: found {len(parser.links)} download link(s), {len(mac_links)} Mac OSX link(s)", file=sys.stderr)
        for link_title, file_name in mac_links:
            download = file_name if urllib.parse.urlparse(file_name).scheme else f"https://alt1.plugins4free.com/get_plug/{urllib.parse.unquote(file_name)}"
            candidate_filename = download.rsplit("/", 1)[-1].split("?", 1)[0]
            print(f"Plugins4Free: macOS filename {candidate_filename}", file=sys.stderr)
            platform_text = f"{title} {link_title} {download}"
            is_macos = re.search(r"(mac|macos|darwin|osx|universal)", platform_text, re.I)
            is_installer = re.search(r"\.(pkg|dmg|zip)(\?|$)", download, re.I)
            windows_asset = re.search(r"(^|[_-])(win(?:dows)?(?:32|64)?|32bit|64bit)([_\-.]|$)", candidate_filename, re.I)
            is_supported_format = re.search(r"\b(VST3?|AU|Audio\s+Unit)\b", link_title, re.I)
            if is_installer and is_macos and is_supported_format and not windows_asset and not re.search(r"(windows|linux|ubuntu)", candidate_filename, re.I):
                filename = candidate_filename
                plugin_name = re.split(r"\s+System\s*:", title, maxsplit=1, flags=re.I)[0].strip()
                plugin_format = "AU" if re.search(r"\b(AU|Audio\s+Unit)\b", link_title, re.I) else "VST"
                candidates.append({"name": plugin_name, "description": plugin_name, "format": plugin_format, "source": "plugins4free", "homepage": url, "version": "latest", "url": download, "filename": filename})
                print(f"Plugins4Free: accepted macOS candidate {plugin_name}", file=sys.stderr)
    print(f"Plugins4Free: parsed {pages} plugin pages and found {len(candidates)} macOS download candidates", file=sys.stderr)
    print(json.dumps(candidates))

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Discover macOS plugin pages from Plugins4Free."""
import json
import re
import sys
import urllib.parse
from html.parser import HTMLParser

from .cask_utils import http_request

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


class PluginTitleParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.title = []
        self.depth = 0

    def handle_starttag(self, tag, attrs):
        if tag.lower() == "h1" and "plugin-title" in dict(attrs).get("class", "").split():
            self.depth = 1
        elif self.depth:
            self.depth += 1

    def handle_data(self, data):
        if self.depth:
            self.title.append(data)

    def handle_endtag(self, tag):
        if self.depth:
            self.depth -= 1


class ElementTextParser(HTMLParser):
    def __init__(self, element_id):
        super().__init__()
        self.element_id = element_id
        self.text = []
        self.depth = 0

    def handle_starttag(self, tag, attrs):
        if self.depth and tag.lower() == "br":
            self.depth = 0
            return
        if self.depth == 0 and dict(attrs).get("id") == self.element_id:
            self.depth = 1
        elif self.depth:
            self.depth += 1

    def handle_data(self, data):
        if self.depth:
            self.text.append(data)

    def handle_endtag(self, tag):
        if self.depth:
            self.depth -= 1

def candidates_from_plugin_page(url, fallback_title=""):
    print(f"Plugins4Free: fetching {url}", file=sys.stderr)
    with http_request(url, user_agent="Mozilla/5.0 (free-daw-cask-discovery)", timeout=15) as page_response:
        page = page_response.read(500_000).decode("utf-8", "ignore")
    title_parser = PluginTitleParser()
    title_parser.feed(page)
    title = re.sub(r"\s+", " ", " ".join(title_parser.title)).strip() or fallback_title
    description_parser = ElementTextParser("VSTDescription")
    description_parser.feed(page)
    description = re.sub(r"\s+", " ", " ".join(description_parser.text)).strip()
    parser = DownloadLinkParser()
    parser.feed(page)
    mac_links = [(link_title, file_name) for link_title, file_name in parser.links if re.search(r"(?:Mac(?:intosh)?\s*(?:OS\s*)?X|OSX)", link_title, re.I)]
    print(f"Plugins4Free: found {len(parser.links)} download link(s), {len(mac_links)} Mac OSX link(s)", file=sys.stderr)
    candidates = []
    for link_title, file_name in mac_links:
        download_path = urllib.parse.urlparse(file_name).path or file_name
        candidate_filename = urllib.parse.unquote(download_path.rsplit("/", 1)[-1].split("?", 1)[0])
        download = f"https://plugins4free.com/get_plug/{urllib.parse.quote(candidate_filename)}"
        print(f"Plugins4Free: macOS filename {candidate_filename}", file=sys.stderr)
        platform_text = f"{title} {link_title} {download}"
        is_macos = re.search(r"(mac|macos|darwin|osx|universal)", platform_text, re.I)
        is_installer = re.search(r"\.(pkg|dmg|zip)(\?|$)", download, re.I)
        windows_asset = re.search(r"(^|[_-])(win(?:dows)?(?:32|64)?|32bit|64bit)([_\-.]|$)", candidate_filename, re.I)
        is_supported_format = re.search(r"\b(VST3?|AU|Audio\s+Unit)\b", link_title, re.I)
        if is_installer and is_macos and is_supported_format and not windows_asset and not re.search(r"(windows|linux|ubuntu)", candidate_filename, re.I):
            plugin_name = re.split(r"\s+System\s*:", title, maxsplit=1, flags=re.I)[0].strip()
            plugin_format = "AU" if re.search(r"\b(AU|Audio\s+Unit)\b", link_title, re.I) else "VST"
            candidates.append({"name": plugin_name, "description": description or plugin_name, "format": plugin_format, "source": "plugins4free", "homepage": url, "version": "latest", "url": download, "filename": candidate_filename})
            print(f"Plugins4Free: accepted macOS candidate {plugin_name}", file=sys.stderr)
    return candidates


def iter_groups():
    print(f"Plugins4Free: fetching directory {DIRECTORY}", file=sys.stderr)
    with http_request(DIRECTORY, user_agent="Mozilla/5.0 (free-daw-cask-discovery)", timeout=30) as response:
        html = response.read(2_000_000).decode("utf-8", "ignore")
    try:
        payload = json.loads(html)
        html = payload.get("html", html)
    except json.JSONDecodeError:
        pass
    pages = 0
    candidate_count = 0
    for match in re.finditer(r'<a[^>]+href=["\']([^"\']+)["\'][^>]*>(.*?)</a>', html, re.I | re.S):
        url = urllib.parse.urljoin(DIRECTORY, match.group(1))
        title = re.sub(r"<[^>]+>", "", match.group(2)).strip()
        title = re.sub(r"\s+", " ", title)
        if not re.search(r"/plugin/[A-Za-z0-9_-]+/?$", urllib.parse.urlparse(url).path, re.I) or not title:
            continue
        pages += 1
        try:
            candidates = candidates_from_plugin_page(url, title)
            if candidates:
                candidate_count += len(candidates)
                yield candidates
        except Exception:
            continue
    print(f"Plugins4Free: parsed {pages} plugin pages and found {candidate_count} macOS download candidates", file=sys.stderr)


def discover():
    candidates = [candidate for group in iter_groups() for candidate in group]
    return candidates


def main():
    print(json.dumps(discover()))

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Find and verify macOS plugin archive links from a plugin product page.

Usage: python3 scripts/plugin_downloads.py https://vendor.example/plugin
Prints JSON records for links that look like macOS installers and respond with
downloadable archive content. It does not download or install the files.
"""
import argparse
import json
import re
import shutil
import subprocess
import sys
import urllib.error
import urllib.parse
import urllib.request
from html.parser import HTMLParser

ARCHIVE_SUFFIXES = (".zip", ".dmg", ".pkg")
MAC_MARKER = re.compile(r"\b(mac(?:os)?|macintosh|darwin|osx|apple\s*silicon|universal)\b", re.I)
DOWNLOAD_MARKER = re.compile(r"\b(download|installer|install|plugin|vst3?|audio\s*unit|\bau\b|clap)\b", re.I)


class LinkParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.links = []
        self.anchor = None

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag.lower() == "a" and attrs.get("href"):
            self.anchor = {"href": attrs["href"], "text": []}
        elif tag.lower() == "img" and self.anchor and attrs.get("alt"):
            self.anchor["text"].append(attrs["alt"])

    def handle_data(self, data):
        if self.anchor is not None:
            self.anchor["text"].append(data)

    def handle_endtag(self, tag):
        if tag.lower() == "a" and self.anchor is not None:
            title = re.sub(r"\s+", " ", " ".join(self.anchor["text"])).strip()
            self.links.append((self.anchor["href"], title))
            self.anchor = None


def page_html(url):
    if shutil.which("lightpanda"):
        result = subprocess.run(
            ["lightpanda", "fetch", url, "--dump", "html", "--json", "--wait-ms", "10000", "--log-level", "fatal"],
            check=True, capture_output=True, text=True, timeout=60,
        )
        response = json.loads(result.stdout)
        status = response.get("http_status", 0)
        if status >= 400:
            raise RuntimeError(f"Lightpanda received HTTP {status} for product page")
        if response.get("error"):
            raise RuntimeError(f"Lightpanda could not load product page: {response['error']}")
        return response.get("content", "")

    request = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0 (free-daw-plugin-discovery)"})
    with urllib.request.urlopen(request, timeout=30) as response:
        return response.read(8_000_000).decode("utf-8", "ignore")


def file_metadata(url):
    """Confirm a link serves an archive without downloading its full contents."""
    request = urllib.request.Request(
        url,
        method="HEAD",
        headers={"User-Agent": "Mozilla/5.0 (free-daw-plugin-discovery)", "Accept": "application/octet-stream,application/zip,*/*"},
    )
    try:
        response = urllib.request.urlopen(request, timeout=30)
    except urllib.error.HTTPError as error:
        if error.code not in (400, 403, 405, 501):
            raise
        request = urllib.request.Request(
            url,
            headers={"User-Agent": "Mozilla/5.0 (free-daw-plugin-discovery)", "Range": "bytes=0-0", "Accept": "application/octet-stream,application/zip,*/*"},
        )
        response = urllib.request.urlopen(request, timeout=30)

    with response:
        content_type = (response.headers.get("Content-Type") or "").split(";", 1)[0].lower()
        disposition = response.headers.get("Content-Disposition", "")
        filename = response.headers.get_filename() or ""
        effective_url = response.geturl()
        suffix = (urllib.parse.urlparse(effective_url).path + " " + filename).lower()
        downloadable_type = (
            content_type in {"application/zip", "application/x-zip-compressed", "application/x-apple-diskimage", "application/vnd.apple.installer+xml", "application/octet-stream"}
            or "attachment" in disposition.lower()
        )
        archive_name = filename or urllib.parse.unquote(urllib.parse.urlparse(effective_url).path.rsplit("/", 1)[-1])
        if not downloadable_type or not any(ext in suffix for ext in ARCHIVE_SUFFIXES):
            return None
        return {
            "url": effective_url,
            "filename": archive_name,
            "content_type": content_type,
            "content_length": response.headers.get("Content-Length"),
        }


def find_downloads(page_url):
    parser = LinkParser()
    parser.feed(page_html(page_url))
    results = []
    seen = set()
    for raw_url, title in parser.links:
        target = urllib.parse.urljoin(page_url, raw_url)
        parsed = urllib.parse.urlparse(target)
        if parsed.scheme not in ("http", "https") or target in seen:
            continue
        seen.add(target)
        hint = f"{title} {target}"
        if not (MAC_MARKER.search(hint) or DOWNLOAD_MARKER.search(title)):
            continue
        try:
            metadata = file_metadata(target)
        except Exception as error:
            print(f"Skipped {target}: download check failed: {error}", file=sys.stderr)
            continue
        if not metadata:
            continue
        mac_evidence = f"{hint} {metadata['filename']}"
        if not MAC_MARKER.search(mac_evidence):
            print(f"Skipped {target}: archive found, but no macOS platform marker", file=sys.stderr)
            continue
        results.append({
            "page": page_url,
            "link_text": title,
            "url": metadata["url"],
            "filename": metadata["filename"],
            "content_type": metadata["content_type"],
            "content_length": metadata["content_length"],
            "platform_evidence": "macOS marker in page link or downloaded filename",
        })
    return results


def main():
    cli = argparse.ArgumentParser(description=__doc__)
    cli.add_argument("url", help="plugin product-page URL")
    args = cli.parse_args()
    parsed = urllib.parse.urlparse(args.url)
    if parsed.scheme not in ("http", "https") or not parsed.hostname:
        cli.error("url must be an absolute HTTP(S) URL")
    try:
        results = find_downloads(args.url)
    except Exception as error:
        print(f"Plugin download discovery: {error}", file=sys.stderr)
        raise SystemExit(1)
    print(f"Plugin download discovery: verified {len(results)} macOS installer link(s) from {args.url}", file=sys.stderr)
    print(json.dumps(results, ensure_ascii=False))


if __name__ == "__main__":
    main()

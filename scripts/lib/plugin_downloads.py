#!/usr/bin/env python3
"""Find and verify macOS plugin archive links from a plugin product page.

Used by source discovery modules in :mod:`scripts.lib`.
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
MAC_INSTALLER_SUFFIXES = (".dmg", ".pkg")
MAC_MARKER = re.compile(r"(?<![a-z])(mac(?:os)?|macintosh|darwin|osx|apple[\s_-]*silicon|universal|au|audio[\s_-]*units?|component)(?![a-z])", re.I)
DOWNLOAD_MARKER = re.compile(r"\b(download|installer|install|plugin|vst3?|audio\s*unit|\bau\b|clap)\b", re.I)


class LinkParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.links = []
        self.anchor = None
        self.h1_depth = 0
        self.h1_text = []

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag.lower() == "h1":
            self.h1_depth += 1
        if tag.lower() == "a" and attrs.get("href"):
            self.anchor = {"href": attrs["href"], "text": []}
        elif tag.lower() == "img" and self.anchor and attrs.get("alt"):
            self.anchor["text"].append(attrs["alt"])

    def handle_data(self, data):
        if self.h1_depth:
            self.h1_text.append(data)
        if self.anchor is not None:
            self.anchor["text"].append(data)

    def handle_endtag(self, tag):
        if tag.lower() == "h1" and self.h1_depth:
            self.h1_depth -= 1
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
            content_type in {"application/zip", "application/x-zip-compressed", "application/x-apple-diskimage", "application/vnd.apple.installer+xml", "application/octet-stream", "binary/octet-stream"}
            or "attachment" in disposition.lower()
        )
        archive_name = filename or urllib.parse.unquote(urllib.parse.urlparse(effective_url).path.rsplit("/", 1)[-1])
        if not downloadable_type or not any(ext in suffix for ext in ARCHIVE_SUFFIXES):
            if any(ext in suffix for ext in ARCHIVE_SUFFIXES):
                print(f"Skipped {url} - unsupported download content type: {content_type or 'missing'}", file=sys.stderr)
            return None
        return {
            # Preserve the stable link from the product page. Some hosts redirect
            # to signed URLs that expire shortly after the check.
            "url": url,
            "filename": archive_name,
            "content_type": content_type,
            "content_length": response.headers.get("Content-Length"),
        }


def download_product_name(title, filename):
    """Use the installer name when the page heading looks like marketing copy."""
    title = re.sub(r"\s+", " ", title).strip()
    if title and len(title) <= 60 and len(title.split()) <= 6:
        return title
    name = urllib.parse.unquote(filename).rsplit("/", 1)[-1]
    name = re.sub(r"\.(?:zip|dmg|pkg)$", "", name, flags=re.I)
    name = re.sub(r"[\s_-]+v?\d+(?:\.\d+)+(?:.*)$", "", name, flags=re.I)
    name = re.sub(
        r"(?:[\s_-]+(?:mac(?:os)?|osx|darwin|universal|arm64|aarch64|x86_64|x64|intel|apple[\s_-]*silicon|vst3?|au|aax|clap|lv2|installer|install|setup|component))+$",
        "", name, flags=re.I,
    )
    name = re.sub(r"\.(?:component|aaxplugin)$", "", name, flags=re.I)
    return name.strip(" _-") or title


def find_downloads(page_url):
    parser = LinkParser()
    parser.feed(page_html(page_url))
    product_name = re.sub(r"\s+", " ", " ".join(parser.h1_text)).strip()
    results = []
    seen = set()
    for raw_url, title in parser.links:
        target = urllib.parse.urljoin(page_url, raw_url)
        parsed = urllib.parse.urlparse(target)
        if parsed.scheme not in ("http", "https") or target in seen:
            continue
        seen.add(target)
        hint = f"{title} {urllib.parse.unquote(target)}"
        mac_installer_link = urllib.parse.unquote(parsed.path).lower().endswith(MAC_INSTALLER_SUFFIXES)
        if not (mac_installer_link or MAC_MARKER.search(hint) or DOWNLOAD_MARKER.search(title)):
            continue
        try:
            metadata = file_metadata(target)
        except Exception as error:
            print(f"Skipped {target} - download check failed: {error}", file=sys.stderr)
            continue
        if not metadata:
            continue
        mac_evidence = f"{hint} {metadata['filename']}"
        mac_installer = metadata["filename"].lower().endswith(MAC_INSTALLER_SUFFIXES)
        if not mac_installer and not MAC_MARKER.search(mac_evidence):
            print(f"Skipped {target} - archive found, but no macOS platform marker", file=sys.stderr)
            continue
        results.append({
            "page": page_url,
            "product_name": download_product_name(product_name, metadata["filename"]),
            "link_text": title,
            "url": metadata["url"],
            "filename": metadata["filename"],
            "content_type": metadata["content_type"],
            "content_length": metadata["content_length"],
            "platform_evidence": "macOS installer extension (.pkg/.dmg)" if mac_installer else "macOS marker in page link or downloaded filename",
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

#!/usr/bin/env python3
"""Discover links shared in Bedroom Producers Blog's current monthly freebies thread.

The output is a JSON list of review candidates. Community links may be deals,
sample packs, non-macOS software, or expired offers, so they are not sent to the
cask generator automatically.
"""
import html
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path
import urllib.parse
import urllib.request
from html.parser import HTMLParser

from .cask_utils import stanza
from .create_casks import clean_name, slug
from .plugin_downloads import find_downloads

HOME = "https://bedroomproducersblog.com/"
THREAD_SLUG = re.compile(r"^df[a-z]{3}\d{2}$", re.I)
CASKS = Path(__file__).resolve().parents[2] / "Casks"


def fetch(url):
    """Fetch a JSON response."""
    if shutil.which("lightpanda"):
        result = subprocess.run(
            ["lightpanda", "fetch", url, "--dump", "html", "--json", "--wait-ms", "10000", "--log-level", "fatal"],
            check=True, capture_output=True, text=True, timeout=60,
        )
        try:
            envelope = json.loads(result.stdout)
        except json.JSONDecodeError as error:
            raise RuntimeError(f"Lightpanda returned invalid JSON for {url}") from error
        status = envelope.get("http_status", 0)
        if status >= 400:
            raise RuntimeError(f"Lightpanda received HTTP {status} for {url}")
        if envelope.get("error"):
            raise RuntimeError(f"Lightpanda could not fetch {url}: {envelope['error']}")
        response = envelope.get("content", "")
        parser = PreParser()
        parser.feed(response)
        if not parser.data:
            raise RuntimeError(f"WordPress API did not return JSON for {url}")
        return json.loads("".join(parser.data))

    request = urllib.request.Request(
        url,
        headers={
            "Accept": "application/json",
            "User-Agent": "free-daw-bpb-discovery/1.0 (+https://github.com/fazibear/homebrew-free-daw-plugins)",
        },
    )
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


class AnchorParser(HTMLParser):
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


class PreParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.in_pre = False
        self.data = []

    def handle_starttag(self, tag, attrs):
        if tag.lower() == "pre":
            self.in_pre = True

    def handle_endtag(self, tag):
        if tag.lower() == "pre":
            self.in_pre = False

    def handle_data(self, data):
        if self.in_pre:
            self.data.append(data)


def wordpress_json(url):
    return fetch(url)


def monthly_thread_from_api():
    query = urllib.parse.urlencode({
        "search": "Deals Freebies Thread",
        "per_page": 20,
        "orderby": "date",
        "order": "desc",
        "_fields": "link,title,date,slug",
    })
    posts = wordpress_json(f"{HOME}wp-json/wp/v2/posts?{query}")
    if not isinstance(posts, list):
        raise RuntimeError("BPB posts API returned an unexpected response")
    for post in posts:
        title = post.get("title", {}).get("rendered", "")
        for _ in range(2):
            title = html.unescape(title)
        title = re.sub(r"<[^>]+>", " ", title).lower()
        if all(word in title for word in ("deals", "freebies", "thread")):
            return post.get("link")
    return None


def current_thread():
    api_thread = monthly_thread_from_api()
    if not api_thread:
        raise RuntimeError("Could not find the current BPB Deals & Freebies Thread in recent WordPress posts")
    return api_thread


def approved_comments(thread_url):
    slug = urllib.parse.urlparse(thread_url).path.rstrip("/").rsplit("/", 1)[-1]
    if not THREAD_SLUG.fullmatch(slug):
        raise RuntimeError(f"Unexpected monthly thread slug: {slug}")
    query = urllib.parse.urlencode({"slug": slug, "_fields": "id,link"})
    posts = wordpress_json(f"{HOME}wp-json/wp/v2/posts?{query}")
    if not isinstance(posts, list) or not posts:
        raise RuntimeError(f"Could not look up post ID for {thread_url}")
    post = posts[0]["id"]
    comments = []
    page = 1
    while True:
        query = urllib.parse.urlencode({"post": post, "per_page": 50, "page": page, "status": "approve"})
        items = wordpress_json(f"{HOME}wp-json/wp/v2/comments?{query}")
        if not isinstance(items, list):
            raise RuntimeError("BPB comments API returned an unexpected response")
        comments.extend(items)
        if len(items) < 100:
            return comments
        page += 1


def candidates_from_comments(thread_url, comments):
    results = []
    seen = set()
    for comment in comments:
        content = html.unescape(comment.get("content", {}).get("rendered", ""))
        parser = AnchorParser()
        parser.feed(content)
        plain_text = re.sub(r"<[^>]+>", " ", content)
        plain_text = re.sub(r"\s+", " ", html.unescape(plain_text)).strip()
        for raw_url, title in parser.links:
            target = urllib.parse.urljoin(thread_url, html.unescape(raw_url))
            host = (urllib.parse.urlparse(target).hostname or "").lower()
            if not host or host == "bedroomproducersblog.com" or target in seen:
                continue
            seen.add(target)
            results.append({
                "name": title or target,
                "url": target,
                "comment": plain_text[:1000],
                "comment_url": comment.get("link", thread_url),
                "thread": thread_url,
                "source": "bpb-freebies",
                "review_required": True,
            })
    return results


def normalized_url(value):
    parsed = urllib.parse.urlparse(value or "")
    host = (parsed.hostname or "").lower().removeprefix("www.")
    return host, parsed.path.rstrip("/").lower()


def existing_casks():
    tokens = set()
    homepages = set()
    for path in CASKS.glob("*.rb"):
        tokens.add(path.stem)
        homepage = stanza(path.read_text(), "homepage")
        if homepage:
            homepages.add(normalized_url(homepage))
    return tokens, homepages


def plugin_format(download):
    text = f"{download.get('link_text', '')} {download.get('filename', '')}"
    if re.search(r"\bVST3\b", text, re.I):
        return "VST3"
    if re.search(r"\bVST\b", text, re.I):
        return "VST"
    if re.search(r"\bAU\b|Audio\s*Unit|\.component\b", text, re.I):
        return "AU"
    if re.search(r"\bCLAP\b", text, re.I):
        return "CLAP"
    if re.search(r"\bLV2\b", text, re.I):
        return "LV2"
    if re.search(r"\bAAX\b", text, re.I):
        return "AAX"
    return None


def product_name(download, page):
    name = re.sub(r"\s+", " ", download.get("product_name", "")).strip()
    if re.match(r"^v?\d+(?:\.\d+)+\b", name, re.I) or re.search(r"choose a tag to compare", name, re.I):
        parsed = urllib.parse.urlparse(page)
        if parsed.hostname and parsed.hostname.lower() == "github.com":
            parts = [part for part in parsed.path.split("/") if part]
            if len(parts) >= 2:
                return parts[1]
    name = re.sub(r"\s+[–—-]\s+v?\d+(?:\.\d+)+(?:.*)$", "", name, flags=re.I)
    name = re.sub(r"\s+\[\d{1,2}-[A-Za-z]{3}-\d{4}\]$", "", name)
    return name.strip()


def cask_candidates(links):
    existing_tokens, existing_homepages = existing_casks()
    results = []
    seen_tokens = set()
    skipped_existing = set()
    for link in links:
        page = link["url"]
        try:
            downloads = find_downloads(page)
        except Exception as error:
            print(f"BPB: skipping {page}: {error}", file=sys.stderr)
            continue
        for download in downloads:
            name = product_name(download, page)
            if not name:
                print(f"BPB: skipping {page}: product page has no title", file=sys.stderr)
                continue
            format_name = plugin_format(download)
            token = slug(clean_name(name))
            if format_name:
                token = f"{token}-{format_name.lower()}"
            if token in existing_tokens or normalized_url(page) in existing_homepages:
                skipped_existing.add(page)
                continue
            if token in seen_tokens:
                continue
            candidate = {
                "name": name,
                "description": link.get("comment") or name,
                "homepage": page,
                "version": "latest",
                "url": download["url"],
                "filename": download["filename"],
                "source": "bpb-freebies",
            }
            if format_name:
                candidate["format"] = format_name
            results.append(candidate)
            seen_tokens.add(token)
    print(
        f"BPB: skipped {len(skipped_existing)} existing plugin(s); "
        f"verified {len(results)} new macOS installer candidate(s)",
        file=sys.stderr,
    )
    return results


def discover():
    try:
        thread = current_thread()
        comments = approved_comments(thread)
        links = candidates_from_comments(thread, comments)
        candidates = cask_candidates(links)
    except Exception as error:
        print(f"BPB: {error}", file=sys.stderr)
        raise SystemExit(1)
    print(f"BPB: checked {len(comments)} approved comment(s) in {thread}", file=sys.stderr)
    return candidates


def main():
    print(json.dumps(discover(), ensure_ascii=False))


if __name__ == "__main__":
    main()

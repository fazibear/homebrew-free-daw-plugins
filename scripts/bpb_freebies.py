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
import urllib.parse
import urllib.request
from html.parser import HTMLParser

HOME = "https://bedroomproducersblog.com/"
THREAD_SLUG = re.compile(r"^df[a-z]{3}\d{2}$", re.I)


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
    for page in range(1, 6):
        query = urllib.parse.urlencode({
            "per_page": 100,
            "page": page,
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
        if len(posts) < 100:
            break
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
        query = urllib.parse.urlencode({"post": post, "per_page": 100, "page": page, "status": "approve"})
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


def main():
    try:
        thread = current_thread()
        comments = approved_comments(thread)
        candidates = candidates_from_comments(thread, comments)
    except Exception as error:
        print(f"BPB: {error}", file=sys.stderr)
        raise SystemExit(1)
    print(f"BPB: checked {len(comments)} approved comment(s); found {len(candidates)} unique external link(s) in {thread}", file=sys.stderr)
    print(json.dumps(candidates, ensure_ascii=False))


if __name__ == "__main__":
    main()

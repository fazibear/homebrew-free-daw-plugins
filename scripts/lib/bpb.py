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
import tempfile
from collections import Counter
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


def response_diagnostics(envelope):
    """Describe an HTTP failure without logging cookies or challenge tokens."""
    allowed_headers = {"server", "content-type", "cf-mitigated", "cf-ray", "retry-after"}
    details = []
    for header in envelope.get("headers", []):
        name = header.get("name", "").lower()
        if name in allowed_headers:
            details.append(f"{name}={header.get('value', '')}")
    content = envelope.get("content") or ""
    title = re.search(r"<title\b[^>]*>(.*?)</title>", content, re.I | re.S)
    if title:
        details.append(f"title={html.unescape(re.sub(r'<[^>]+>', '', title[1]))[:200]}")
    if envelope.get("error"):
        details.append(f"error={envelope['error']}")
    return re.sub(r"\s+", " ", "; ".join(details)).strip()


def lightpanda_fetch(url, *options):
    result = subprocess.run(
        ["lightpanda", "fetch", url, "--dump", "html", "--json", "--wait-ms", "10000", "--log-level", "fatal", *options],
        check=True, capture_output=True, text=True, timeout=60,
    )
    try:
        return json.loads(result.stdout)
    except json.JSONDecodeError as error:
        raise RuntimeError(f"Lightpanda returned invalid JSON for {url}") from error


def fetch(url):
    """Fetch JSON, warming up BPB cookies once if Cloudflare challenges it."""
    if shutil.which("lightpanda"):
        envelope = lightpanda_fetch(url)
        challenged = any(
            header.get("name", "").lower() == "cf-mitigated"
            and header.get("value") == "challenge"
            for header in envelope.get("headers", [])
        )
        if envelope.get("http_status") == 403 and challenged:
            print("BPB: Cloudflare challenge; retrying API with homepage cookies", file=sys.stderr)
            with tempfile.TemporaryDirectory(prefix="bpb-") as temporary:
                cookies = Path(temporary) / "cookies.json"
                # Even a challenged homepage can issue cookies useful to the API.
                lightpanda_fetch(HOME, "--cookie-jar", str(cookies))
                if cookies.is_file():
                    envelope = lightpanda_fetch(url, "--cookie", str(cookies))
        status = envelope.get("http_status", 0)
        if status >= 400:
            details = response_diagnostics(envelope)
            raise RuntimeError(
                f"Lightpanda received HTTP {status} for {url}"
                + (f" ({details})" if details else "")
            )
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
    counts = Counter()
    for comment in comments:
        content = html.unescape(comment.get("content", {}).get("rendered", ""))
        parser = AnchorParser()
        parser.feed(content)
        counts["comments_with_links"] += bool(parser.links)
        plain_text = re.sub(r"<[^>]+>", " ", content)
        plain_text = re.sub(r"\s+", " ", html.unescape(plain_text)).strip()
        for raw_url, title in parser.links:
            counts["links"] += 1
            target = urllib.parse.urljoin(thread_url, html.unescape(raw_url))
            host = (urllib.parse.urlparse(target).hostname or "").lower()
            if not host or host == "bedroomproducersblog.com":
                counts["internal_or_invalid"] += 1
                continue
            if target in seen:
                counts["duplicates"] += 1
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
    print(
        f"BPB: comment links: {counts['comments_with_links']}/{len(comments)} comments contain links; "
        f"{counts['links']} links total; {counts['internal_or_invalid']} internal/invalid; "
        f"{counts['duplicates']} repeated; {len(results)} unique external pages to check",
        file=sys.stderr,
    )
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
    if re.search(r"\bAAX\b|\.aaxplugin\b", text, re.I):
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


def iter_candidate_groups(links):
    existing_tokens, existing_homepages = existing_casks()
    seen_tokens = set()
    skipped_existing = set()
    verified = 0
    counts = Counter()
    for index, link in enumerate(links, 1):
        page = link["url"]
        print(f"BPB: checking page {index}/{len(links)}: {page}", file=sys.stderr)
        try:
            downloads = find_downloads(page)
        except Exception as error:
            counts["failed_pages"] += 1
            print(f"BPB: skipping {page}: {error}", file=sys.stderr)
            continue
        print(f"BPB: {page}: found {len(downloads)} verified macOS archive(s)", file=sys.stderr)
        if not downloads:
            counts["no_downloads"] += 1
            print(f"BPB: skipping {page}: no verified direct macOS archives", file=sys.stderr)
        results = []
        for download in downloads:
            name = product_name(download, page)
            if not name:
                counts["missing_title"] += 1
                print(f"BPB: skipping {page}: product page has no title", file=sys.stderr)
                continue
            format_name = plugin_format(download)
            token = slug(clean_name(name))
            if format_name:
                token = f"{token}-{format_name.lower()}"
            if token in existing_tokens or normalized_url(page) in existing_homepages:
                skipped_existing.add(page)
                counts["existing"] += 1
                reason = "cask token already exists" if token in existing_tokens else "homepage already has a cask"
                print(f"BPB: skipping {token} from {page}: {reason}", file=sys.stderr)
                continue
            if token in seen_tokens:
                counts["duplicates"] += 1
                print(f"BPB: skipping {token} from {page}: duplicate candidate in this run", file=sys.stderr)
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
            verified += 1
            print(f"BPB: candidate {token}: {download['filename']} ({format_name or 'combined/unknown format'})", file=sys.stderr)
        if results:
            counts["groups"] += 1
            print(f"BPB: {page}: sending {len(results)} candidate(s) to cask generation", file=sys.stderr)
            yield results
    print(
        f"BPB: page summary: {len(links)} checked; {counts['failed_pages']} failed; "
        f"{counts['no_downloads']} without verified macOS archives; "
        f"{len(skipped_existing)} pages matched existing casks. "
        f"Candidate summary: {counts['existing']} existing; {counts['duplicates']} duplicate; "
        f"{counts['missing_title']} without titles; {verified} new installer candidates "
        f"across {counts['groups']} product group(s)",
        file=sys.stderr,
    )


def iter_groups():
    try:
        thread = current_thread()
        comments = approved_comments(thread)
        links = candidates_from_comments(thread, comments)
        groups = iter_candidate_groups(links)
    except Exception as error:
        print(f"BPB: {error}", file=sys.stderr)
        raise SystemExit(1)
    print(f"BPB: checked {len(comments)} approved comment(s) in {thread}", file=sys.stderr)
    yield from groups


def discover():
    return [candidate for group in iter_groups() for candidate in group]


def main():
    print(json.dumps(discover(), ensure_ascii=False))


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Turn BPB community links into candidates with verified macOS plugin archives.

Reads link records from standard input and writes cask-generator candidates to
standard output. Non-plugin links and links without a verified direct installer
are skipped.
"""
import json
import re
import sys
from pathlib import Path
import urllib.parse

from .cask_utils import stanza
from .create_casks import clean_name, slug
from .plugin_downloads import find_downloads

CASKS = Path(__file__).resolve().parents[2] / "Casks"


def normalized_url(value):
    parsed = urllib.parse.urlparse(value or "")
    host = (parsed.hostname or "").lower().removeprefix("www.")
    path = parsed.path.rstrip("/").lower()
    return host, path


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


def main():
    try:
        links = json.load(sys.stdin)
        if not isinstance(links, list):
            raise ValueError("input must be a JSON array")
    except Exception as error:
        raise SystemExit(f"BPB candidate adapter: {error}")

    candidates = []
    existing_tokens, existing_homepages = existing_casks()
    skipped_existing = set()
    for link in links:
        page = link.get("url", "")
        try:
            downloads = find_downloads(page)
        except Exception as error:
            print(f"BPB: skipping {page} - {error}", file=sys.stderr)
            continue
        for download in downloads:
            product_name = download.get("product_name")
            if not product_name:
                print(f"BPB: skipping {page} - product page has no title", file=sys.stderr)
                continue
            candidate = {
                "name": product_name,
                "description": link.get("comment") or product_name,
                "homepage": page,
                "version": "latest",
                "url": download["url"],
                "filename": download["filename"],
                "source": "bpb-freebies",
            }
            if (plugin_format_name := plugin_format(download)):
                candidate["format"] = plugin_format_name
            token = slug(clean_name(candidate["name"]))
            if plugin_format_name:
                token = f"{token}-{plugin_format_name.lower()}"
            if token in existing_tokens or normalized_url(page) in existing_homepages:
                skipped_existing.add(page)
                continue
            candidates.append(candidate)

    print(
        f"BPB: checked {len(links)} comment link(s); skipped {len(skipped_existing)} existing plugin(s); "
        f"verified {len(candidates)} new macOS plugin installer candidate(s)",
        file=sys.stderr,
    )
    print(json.dumps(candidates, ensure_ascii=False))


if __name__ == "__main__":
    main()

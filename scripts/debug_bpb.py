#!/usr/bin/env python3
"""Compare BPB request settings without creating casks or publishing PRs."""
import json
import subprocess
import tempfile
from pathlib import Path
import urllib.parse

from lib.bpb import HOME, PreParser, response_diagnostics


def probe(name, url, options):
    result = subprocess.run(
        ["lightpanda", "fetch", url, "--dump", "html", "--json",
         "--wait-ms", "10000", "--log-level", "fatal", *options],
        capture_output=True, text=True, timeout=60,
    )
    try:
        envelope = json.loads(result.stdout)
    except json.JSONDecodeError:
        print(f"{name}: exit={result.returncode}; no JSON response", flush=True)
        return False
    parser = PreParser()
    parser.feed(envelope.get("content") or "")
    valid_json = False
    try:
        valid_json = isinstance(json.loads("".join(parser.data)), list)
    except json.JSONDecodeError:
        pass
    print(
        f"{name}: HTTP {envelope.get('http_status')}; exit={result.returncode}; "
        f"JSON array={valid_json}; {response_diagnostics(envelope)}",
        flush=True,
    )
    return valid_json


def main():
    subprocess.run(["lightpanda", "version"], check=True)
    query = urllib.parse.urlencode({
        "search": "Deals Freebies Thread", "per_page": 20,
        "orderby": "date", "order": "desc", "_fields": "link,title,date,slug",
    })
    url = f"{HOME}wp-json/wp/v2/posts?{query}"
    variants = [
        ("baseline", []),
        ("HTTP/1.1", ["--http-version", "1.1"]),
        ("JSON Accept", ["--http-header", "Accept: application/json"]),
        ("wait for JSON", ["--wait-selector", "pre", "--wait-until", "domcontentloaded"]),
    ]
    for name, options in variants:
        probe(name, url, options)
    with tempfile.TemporaryDirectory() as temporary:
        cookies = str(Path(temporary) / "cookies.json")
        probe("homepage warm-up", HOME, ["--cookie-jar", cookies])
        if Path(cookies).is_file():
            probe("API after homepage", url, ["--cookie", cookies])


if __name__ == "__main__":
    main()

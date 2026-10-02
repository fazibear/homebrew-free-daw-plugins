"""Resolve a manually supplied product, repository, or download URL."""
import re
from urllib.parse import unquote, urldefrag, urljoin, urlparse

from .cask_utils import github_repository
from .bpb_cask_candidates import plugin_format
from .github import candidate_from_repository
from .plugins4free import candidates_from_plugin_page
from .plugin_downloads import (
    ARCHIVE_SUFFIXES, DOWNLOAD_MARKER, LinkParser, download_product_name,
    file_metadata, find_downloads, page_html,
)


def candidates_from_url(url, name=""):
    parsed = urlparse(url)
    if parsed.scheme not in ("https", "http") or not parsed.hostname or parsed.username or parsed.password:
        raise ValueError("Supply an absolute HTTP(S) URL without credentials")
    if re.fullmatch(r"/(?:plugin)/[A-Za-z0-9_-]+/?", parsed.path) and parsed.hostname in {"plugins4free.com", "www.plugins4free.com"}:
        candidates = candidates_from_plugin_page(url)
    elif unquote(parsed.path).lower().endswith(ARCHIVE_SUFFIXES):
        metadata = file_metadata(url)
        candidates = [dict(metadata, name=download_product_name("", metadata["filename"]),
                           homepage=url, version="latest", source="url")] if metadata else []
    elif repository := github_repository(url):
        candidate = candidate_from_repository({"full_name": repository, "name": repository.split("/")[1]})
        candidates = [candidate] if candidate else []
    else:
        pages = [url]
        parser = LinkParser()
        parser.feed(page_html(url))
        for href, title in parser.links:
            target = urldefrag(urljoin(url, href))[0]
            other = urlparse(target)
            if (other.scheme in {"https", "http"} and other.hostname == parsed.hostname
                    and not unquote(other.path).lower().endswith(ARCHIVE_SUFFIXES)
                    and (DOWNLOAD_MARKER.search(title) or re.search(r"/downloads?/?$", other.path, re.I))
                    and target not in pages and len(pages) < 6):
                pages.append(target)
        candidates = []
        seen = set()
        for page in pages:
            for download in find_downloads(page):
                if download["url"] in seen:
                    continue
                seen.add(download["url"])
                candidates.append(dict(download, name=download_product_name("", download["filename"]),
                                       homepage=url, version="latest", source="url", format=plugin_format(download)))
        if not candidates:
            for href, _ in parser.links:
                repository = github_repository(urljoin(url, href))
                if repository:
                    candidate = candidate_from_repository({"full_name": repository, "name": repository.split("/")[1]})
                    if candidate:
                        candidates.append(candidate)
                        break
    for candidate in candidates:
        if name:
            candidate["name"] = name
        # The shared renderer uses Ruby double-quoted strings. Reject syntax
        # rather than allow externally supplied text to become Ruby code.
        for field in ("name", "description", "homepage", "url", "filename", "version"):
            value = str(candidate.get(field, ""))
            if any(char in value for char in ('"', '\\', '\n', '\r', '\x00')) or "#{" in value:
                raise ValueError(f"Unsupported characters in candidate {field}")
    if not candidates:
        raise ValueError("No supported macOS downloads found at the supplied URL")
    return candidates

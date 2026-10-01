#!/usr/bin/env python3
"""Regenerate discovery casks from current source data with the shared renderer."""
import re
import sys
import urllib.parse
from pathlib import Path

from create_casks import archive_members, render
from github_plugins import candidate_from_repository
from plugins4free_plugins import candidates_from_plugin_page


def stanza(source, name):
    match = re.search(rf'^  {re.escape(name)} "([^"]*)"$', source, re.M)
    if not match:
        raise ValueError(f"missing {name} stanza")
    return match.group(1)


def candidate_for(path):
    source = path.read_text()
    token = path.stem
    homepage = stanza(source, "homepage")

    if re.fullmatch(r"https://(?:www\.)?plugins4free\.com/plugin/[A-Za-z0-9_-]+/?", homepage):
        if token.endswith("-au"):
            plugin_format = "AU"
        elif token.endswith("-vst"):
            plugin_format = "VST"
        else:
            raise ValueError(f"{path}: expected an AU or VST Plugins4Free cask token")
        candidates = candidates_from_plugin_page(homepage)
        candidate = next((item for item in candidates if item.get("format") == plugin_format), None)
        if candidate is None:
            raise ValueError(f"{path}: Plugins4Free page has no current {plugin_format} download")
    elif urllib.parse.urlparse(homepage).netloc.lower() == "github.com":
        parts = [part for part in urllib.parse.urlparse(homepage).path.split("/") if part]
        if len(parts) < 2:
            raise ValueError(f"{path}: could not determine GitHub repository from homepage")
        repo = {"full_name": "/".join(parts[:2]), "name": parts[1]}
        candidate = candidate_from_repository(repo)
        if candidate is None:
            raise ValueError(f"{path}: GitHub repository has no current macOS release candidate")
    else:
        raise ValueError(f"{path}: unsupported discovery source homepage: {homepage}")

    candidate["name"] = stanza(source, "name")
    candidate["description"] = stanza(source, "desc")
    candidate["homepage"] = homepage
    return candidate


def main():
    if len(sys.argv) < 2:
        raise SystemExit("usage: regenerate_casks.py Casks/<discovered-cask>.rb [...]")

    paths = [Path(argument) for argument in sys.argv[1:]]
    source_paths = {path.resolve() for path in paths}
    regenerated = {}
    obsolete_paths = set()
    for path in paths:
        candidate = candidate_for(path)
        archive = None if candidate["filename"].lower().endswith(".pkg") else archive_members(candidate)
        candidate["archive_members"] = archive
        name, content = render(candidate, archive_fallback=archive)
        if not name or not content:
            raise ValueError(f"{path}: current source candidate could not produce a cask")
        if name != path.stem:
            content, replacements = re.subn(
                r'^cask "[^"]+" do$',
                f'cask "{path.stem}" do',
                content,
                count=1,
                flags=re.M,
            )
            if replacements != 1:
                raise ValueError(f"{path}: could not preserve the existing cask token")
            name = path.stem
        target = path
        if target.exists() and target.resolve() not in source_paths:
            raise ValueError(f"{path}: regenerated cask {target} already exists")
        if target in regenerated and regenerated[target] != content:
            raise ValueError(f"{path}: multiple casks generated different contents for {target}")
        regenerated[target] = content
        if target != path:
            obsolete_paths.add(path)

    for target, content in regenerated.items():
        target.write_text(content)
        print(f"Regenerated {target}", file=sys.stderr)
    for path in obsolete_paths:
        if path not in regenerated:
            path.unlink()


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Regenerate existing Plugins4Free casks in place using the current generator."""
import re
import sys
import urllib.parse
from pathlib import Path
from pathlib import PurePosixPath

from create_casks import archive_members, render


def stanza(source, name):
    match = re.search(rf'^  {re.escape(name)} "([^"]*)"$', source, re.M)
    if not match:
        raise ValueError(f"missing {name} stanza")
    return match.group(1)


def candidate_for(path):
    source = path.read_text()
    token = path.stem
    if token.endswith("-au"):
        plugin_format = "AU"
    elif token.endswith("-vst"):
        plugin_format = "VST"
    else:
        raise ValueError(f"{path}: expected an AU or VST Plugins4Free cask token")

    homepage = stanza(source, "homepage")
    if not re.fullmatch(r"https://(?:www\.)?plugins4free\.com/plugin/[A-Za-z0-9_-]+/?", homepage):
        raise ValueError(f"{path}: not a Plugins4Free plugin homepage")

    url = stanza(source, "url")
    filename = Path(urllib.parse.unquote(urllib.parse.urlparse(url).path)).name
    if not filename:
        raise ValueError(f"{path}: could not determine download filename")

    version_match = re.search(r'^  version "([^"]*)"$', source, re.M)
    sha_match = re.search(r'^  sha256 ("([0-9a-f]{64})"|:no_check)$', source, re.M)
    if not version_match or not sha_match:
        raise ValueError(f"{path}: missing version or sha256 stanza")

    return {
        "name": stanza(source, "name"),
        "description": stanza(source, "desc"),
        "homepage": homepage,
        "url": url,
        "filename": filename,
        "version": version_match.group(1),
        "digest": sha_match.group(2) or "",
        "format": plugin_format,
        "source": "plugins4free",
    }


def archive_fallback_from_cask(path, source):
    """Reuse the existing install target if a remote archive cannot be inspected."""
    bundle_match = re.search(r'^    move "([^"]+\.(?:component|vst3?|clap))",', source, re.M | re.I)
    if bundle_match:
        bundle = bundle_match.group(1)
        return (bundle, [], str(PurePosixPath(bundle).parent), None)

    pkg_match = re.search(r'^  pkg "([^"]+)"$', source, re.M)
    if pkg_match:
        return (pkg_match.group(1), [], ".", None)

    raise ValueError(f"{path}: archive is unavailable and existing cask has no recognizable install target")


def main():
    if len(sys.argv) < 2:
        raise SystemExit("usage: regenerate_casks.py Casks/<plugin>-au.rb [...]")

    paths = [Path(argument) for argument in sys.argv[1:]]
    source_paths = {path.resolve() for path in paths}
    regenerated = {}
    obsolete_paths = set()
    for path in paths:
        source = path.read_text()
        candidate = candidate_for(path)
        archive = None
        if not candidate["filename"].lower().endswith(".pkg"):
            archive = archive_members(candidate)
            if archive is None:
                archive = archive_fallback_from_cask(path, source)
        name, content = render(candidate, archive_fallback=archive)
        if not name or not content:
            name, content = render(candidate, archive_fallback_from_cask(path, source))
        if not name or not content:
            raise ValueError(f"{path}: current generator could not reproduce this cask")
        target = path.with_name(f"{name}.rb")
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

#!/usr/bin/env python3
"""Regenerate discovery casks from current source data with the shared renderer."""
import re
import sys
from pathlib import Path

from .cask_utils import github_repository, preserve_cask_token, stanza
from .create_casks import archive_members, render
from .github import candidate_from_repository
from .plugins4free import candidates_from_plugin_page


def candidate_for(path):
    source = path.read_text()
    token = path.stem
    homepage = stanza(source, "homepage", required=True)

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
    elif (repository := github_repository(homepage)):
        parts = repository.split("/")
        repo = {"full_name": "/".join(parts[:2]), "name": parts[1]}
        candidate = candidate_from_repository(repo)
        if candidate is None:
            raise ValueError(f"{path}: GitHub repository has no current macOS release candidate")
    else:
        raise ValueError(f"{path}: unsupported discovery source homepage: {homepage}")

    candidate["name"] = stanza(source, "name", required=True)
    candidate["description"] = stanza(source, "desc", required=True)
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
        if candidate["filename"].lower().endswith(".pkg"):
            candidate["archive_members"] = None
        else:
            candidate["archive_members"] = archive_members(candidate, strict=True)
            if candidate["archive_members"] is None:
                raise ValueError(f"{path}: current archive could not be inspected")
        name, content = render(candidate)
        if not name or not content:
            raise ValueError(f"{path}: current source candidate could not produce a cask")
        if name != path.stem:
            try:
                content = preserve_cask_token(content, path.stem)
            except ValueError as error:
                raise ValueError(f"{path}: {error}") from error
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

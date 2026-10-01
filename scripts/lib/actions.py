"""Python action entry points shared by GitHub Actions workflows."""
import os
import re
import sys
from pathlib import Path

SCRIPTS = Path(__file__).resolve().parents[1]
ROOT = SCRIPTS.parent

from .action import base_branch, configure_git, gh, gh_json, repo_env, run  # noqa: E402
from .create_casks import create_casks  # noqa: E402


def discover(source):
    if source == "github":
        from . import github
        candidates = github.discover()
    elif source == "plugins4free":
        from . import plugins4free
        candidates = plugins4free.discover()
    elif source == "bpb":
        from . import bpb
        candidates = bpb.discover()
    else:
        raise ValueError(f"unknown discovery source: {source}")
    create_casks(candidates)


def _cask_fields(path):
    from .cask_utils import stanza
    source = path.read_text()
    return {key: stanza(source, key) for key in ("name", "desc", "homepage", "url")}


def _new_casks():
    result = run("git", "ls-files", "--others", "--exclude-standard", "Casks/*.rb", capture=True)
    return [Path(line) for line in result.stdout.splitlines() if line]


def _matching_prs(title):
    repo = repo_env()
    return gh_json("pr", "list", "--repo", repo, "--state", "all", "--search", f'in:title "{title}"',
                   "--limit", "100", "--json", "number,title,labels")


def _invalid_pr(title):
    for item in _matching_prs(title):
        if item.get("title") == title and any(label.get("name") == "invalid" for label in item.get("labels", [])):
            return item["number"]
    return None


def _open_pr(branch):
    repo = repo_env()
    prs = gh_json("pr", "list", "--repo", repo, "--head", branch, "--state", "open", "--json", "number")
    return prs[0]["number"] if prs else None


def publish_discovery(source, paths):
    configure_git()
    repo = repo_env()
    token = os.environ.get("GH_TOKEN")
    groups = {}
    if source == "plugins4free":
        for path in paths:
            fields = _cask_fields(path)
            key = fields.get("homepage") or path.stem
            groups.setdefault(key, []).append(path)
    else:
        groups = {path.stem: [path] for path in paths}
    for key, group in groups.items():
        path = group[0]
        slug = path.stem if source != "plugins4free" else re.sub(r"[^A-Za-z0-9._-]", "-", key.rstrip("/").rsplit("/", 1)[-1])
        fields = _cask_fields(path)
        plugin_name = fields.get("name") or slug
        title = f"Add {slug} cask" if source != "plugins4free" else f"Add {plugin_name} casks"
        branch = f"automation/discovered-{source}-{slug}"
        invalid = _invalid_pr(title)
        if invalid:
            print(f"Skipping {slug}: PR #{invalid} is marked invalid")
            continue
        open_pr = _open_pr(branch)
        if source == "github" and open_pr:
            print(f"Skipping {slug}: an open GitHub discovery PR already exists")
            continue
        run("git", "checkout", "-B", branch, f"origin/{base_branch()}")
        run("git", "add", "--", *(str(item) for item in group))
        run("git", "commit", "-m", title)
        run("git", "push", "--force-with-lease", "origin", branch)
        if source == "bpb":
            body = "\n".join([
                "Automated BPB freeware discovery candidate.", "", f"Name: {fields['name']}",
                "Source: Bedroom Producers Blog monthly freebies thread", f"Homepage: {fields['homepage']}",
                f"Download: {fields['url']}", "", "Please review the plugin, license, download, and installed files.",
            ])
        else:
            body = "\n".join([
                f"Automated {source} discovery candidate.", "", f"Name: {fields['name']}",
                *([f"Description: {fields['desc']}"] if source == "github" else []),
                f"Source: {fields['homepage']}", f"Homepage: {fields['homepage']}", f"Download: {fields['url']}", "",
                "Please review licensing, checksum, installer behavior, and Homebrew policy.",
            ])
        if source == "plugins4free":
            cask_list = "\n".join(f"- {item.stem}" for item in group)
            body = "\n".join([
                f"Automated Plugins4Free discovery for {plugin_name}.", "",
                "Free macOS audio plugin discovered from Plugins4Free. The PR includes separate casks for each available plugin format.",
                "", f"Homepage: {fields['homepage']}", "", "Casks:", cask_list, "",
                "Please review licensing, checksum, installer behavior, and Homebrew policy.",
            ])
        if open_pr:
            gh("pr", "edit", str(open_pr), "--repo", repo, "--title", title, "--body", body, token=token)
        else:
            gh("pr", "create", "--base", base_branch(), "--head", branch, "--title", title,
               "--body", body, "--label", "automation", "--repo", repo, token=token)


def run_discovery_action(source):
    if source == "github":
        from .github import iter_candidates
        candidate_groups = ([candidate] for candidate in iter_candidates())
    elif source == "plugins4free":
        from .plugins4free import iter_groups
        candidate_groups = iter_groups()
    elif source == "bpb":
        from .bpb import iter_groups
        candidate_groups = iter_groups()
    else:
        raise ValueError(f"unknown discovery source: {source}")

    for candidates in candidate_groups:
        before = set(_new_casks())
        create_casks(candidates)
        created = sorted(set(_new_casks()) - before)
        if created:
            tokens = ", ".join(path.stem for path in created)
            print(f"Publishing {source} candidate cask(s): {tokens}")
            publish_discovery(source, created)


def update_action():
    from .cask_utils import stanza
    from .update_casks import update

    configure_git()
    repo = repo_env()
    groups = {}
    for path in sorted((ROOT / "Casks").glob("*.rb")):
        source = path.read_text()
        version = stanza(source, "version")
        homepage = stanza(source, "homepage") or ""
        url = stanza(source, "url") or ""
        if not version or version == "latest" or not homepage.startswith("https://github.com/") or "github.com/" not in url:
            continue
        token = path.stem
        for suffix in ("-vst3", "-vst", "-au", "-clap", "-lv2"):
            if token.endswith(suffix):
                token = token[:-len(suffix)]
                break
        groups.setdefault(token, []).append(path)

    for plugin_key, paths in groups.items():
        branch = f"automation/cask-updates-{plugin_key}"
        run("git", "reset", "--hard", f"origin/{base_branch()}")
        run("git", "checkout", "-B", branch, f"origin/{base_branch()}")
        changed = []
        for path in paths:
            try:
                status, detail = update(path)
            except Exception as error:
                status, detail = "error", str(error)
            print(f"{path.stem}: {status}: {detail}")
            if status == "updated":
                changed.append(path)
        if not changed:
            continue
        relative_paths = [path.resolve().relative_to(ROOT).as_posix() for path in changed]
        run("git", "add", "--", *relative_paths)
        run("git", "commit", "-m", f"Update {plugin_key} casks")
        run("git", "push", "--force-with-lease", "origin", branch)
        from .cask_utils import stanza
        first = paths[0]
        name = stanza(first.read_text(), "name") or plugin_key
        for suffix in (" AU", " VST3", " VST", " CLAP", " LV2", "-AU", "-VST3", "-VST", "-CLAP", "-LV2"):
            if name.endswith(suffix):
                name = name[:-len(suffix)]
        title = f"Update {name} casks"
        entries = []
        for path in changed:
            relative_path = path.resolve().relative_to(ROOT).as_posix()
            old = run("git", "show", f"origin/{base_branch()}:{relative_path}", capture=True).stdout
            old_version = stanza(old, "version")
            new_version = stanza(path.read_text(), "version")
            entries.append(f"- {path.stem}: {old_version} → {new_version}")
        body = "Automated update check for versioned casks using their GitHub Releases.\n\nUpdated casks:\n" + "\n".join(entries) + "\n\nPlease review the updated versions, download URLs, and checksums."
        open_pr = _open_pr(branch)
        if open_pr:
            gh("pr", "edit", str(open_pr), "--repo", repo, "--title", title, "--body", body)
        else:
            gh("pr", "create", "--repo", repo, "--base", base_branch(), "--head", branch,
               "--title", title, "--body", body, "--label", "automation")


def regenerate_action():
    from .regenerate_casks import candidate_for
    from .create_casks import archive_members, render
    from .cask_utils import preserve_cask_token, stanza
    from .update_casks import update
    repo = repo_env()
    token = os.environ.get("GH_TOKEN")
    bot = os.environ.get("BOT_LOGIN")
    requested = os.environ.get("PR_NUMBER")
    if requested:
        numbers = [int(requested)]
    else:
        prs = gh_json("pr", "list", "--repo", repo, "--state", "open", "--limit", "100",
                      "--json", "number,author,headRefName,headRepository,labels", token=token)
        automation_prs = [p for p in prs if p.get("author", {}).get("login") == bot
                          and p.get("headRefName", "").startswith("automation/")
                          and p.get("headRepository", {}).get("nameWithOwner") == repo
                          and any(label.get("name") == "automation" for label in p.get("labels", []))]
        numbers = [p["number"] for p in automation_prs]
        print(f"Found {len(prs)} open PR(s); selected {len(numbers)} automation PR(s): {', '.join(f'#{n}' for n in numbers) or 'none'}")
    failures = []
    for number in numbers:
        try:
            metadata = gh_json("pr", "view", str(number), "--repo", repo,
                               "--json", "author,baseRefName,headRefName,headRepository,labels", token=token)
            branch = metadata["headRefName"]
            is_discovery = branch.startswith(("automation/discovered-plugins4free-", "automation/discovered-github-"))
            is_update = branch.startswith("automation/cask-updates-")
            if not (is_discovery or is_update) or metadata.get("headRepository", {}).get("nameWithOwner") != repo or metadata.get("author", {}).get("login") != bot or not any(l.get("name") == "automation" for l in metadata.get("labels", [])):
                raise RuntimeError(f"PR #{number} failed automation cask PR validation")

            base = metadata["baseRefName"]
            run("git", "fetch", "origin", base)
            run("git", "reset", "--hard", f"origin/{base}")
            run("gh", "pr", "checkout", str(number), "--repo", repo)
            try:
                run("git", "rebase", f"origin/{base}")
            except Exception:
                run("git", "rebase", "--abort", check=False)
                raise
            result = run("git", "diff", "--diff-filter=AM", "--name-only", f"origin/{base}...HEAD", "--", "Casks/*.rb", capture=True)
            files = [Path(line) for line in result.stdout.splitlines() if line]
            if not files:
                raise RuntimeError(f"PR #{number}: no added or modified cask files found")
            for path in files:
                if is_discovery:
                    candidate = candidate_for(path)
                    candidate["archive_members"] = None if candidate["filename"].lower().endswith(".pkg") else archive_members(candidate, strict=True)
                    name, content = render(candidate)
                    if not content:
                        raise RuntimeError(f"{path}: current source candidate could not produce a cask")
                    if name != path.stem:
                        content = preserve_cask_token(content, path.stem)
                    path.write_text(content)
                else:
                    status, detail = update(path)
                    if status not in {"updated", "current"}:
                        raise RuntimeError(f"{path}: {detail}")
                    print(f"PR #{number}: {path.stem}: {status}: {detail}")
            changed = run("git", "diff", "--name-only", "--diff-filter=AM", "--", "Casks/*.rb", capture=True).stdout.splitlines()
            for filename in files:
                run("ruby", "-c", filename)
            if changed:
                run("git", "add", "--", *changed)
                run("git", "commit", "-m", "Regenerate cask PR")
                run("git", "push", "--force-with-lease", "origin", branch)
            print(f"PR #{number}: {'regenerated' if is_discovery else 'updated'} ({len(changed)} changed cask file(s))")
        except Exception as error:
            failures.append((number, error))
            print(f"PR #{number}: failed: {error}", file=sys.stderr)

    if failures:
        failed = ", ".join(f"#{number}" for number, _ in failures)
        raise RuntimeError(f"Failed to regenerate {len(failures)} of {len(numbers)} PRs: {failed}")


def merge_action():
    repo = repo_env()
    token = os.environ.get("GH_TOKEN")
    read_token = os.environ.get("READ_TOKEN")
    number = os.environ.get("PR_NUMBER")
    branch = os.environ.get("HEAD_BRANCH")
    if not number and branch:
        prs = gh_json("pr", "list", "--repo", repo, "--head", branch, "--state", "open", "--json", "number", token=token)
        number = str(prs[0]["number"]) if prs else ""
    if not number:
        raise RuntimeError("workflow event has no pull request number or matching open PR")
    bot = os.environ.get("BOT_LOGIN")
    if not bot:
        raise RuntimeError("BOT_LOGIN is required")
    metadata = gh_json("pr", "view", number, "--repo", repo,
                       "--json", "author,headRefName,headRepository,labels,state,autoMergeRequest", token=read_token)
    print(f"Processing PR #{number} in {repo}")
    if metadata.get("state") == "MERGED":
        raise RuntimeError(f"PR #{number} is already merged")
    if metadata.get("autoMergeRequest"):
        print(f"Auto-merge is already enabled for PR #{number}; waiting for GitHub")
        return
    if metadata.get("author", {}).get("login") != bot:
        raise RuntimeError("PR author does not match configured bot login")
    if not metadata.get("headRefName", "").startswith(("automation/discovered-", "automation/cask-updates-")):
        raise RuntimeError("PR head branch is not an automation branch")
    if metadata.get("headRepository", {}).get("nameWithOwner") != repo:
        raise RuntimeError("PR head repository does not match target repository")
    if not any(item.get("name") == "automation" for item in metadata.get("labels", [])):
        raise RuntimeError("PR does not have the automation label")
    result = run("gh", "pr", "merge", number, "--repo", repo, "--squash", "--auto", capture=True, check=False,
                 env={**os.environ, "GH_TOKEN": token or ""})
    output = (result.stdout or "") + (result.stderr or "")
    if result.returncode and "pull request is in clean status" in output.lower():
        run("gh", "pr", "merge", number, "--repo", repo, "--squash", env={**os.environ, "GH_TOKEN": token or ""})
    elif result.returncode:
        sys.stderr.write(output)
        raise RuntimeError(f"could not merge PR #{number}")
    else:
        sys.stdout.write(output)


def validate_action():
    repo = repo_env()
    token = os.environ.get("GH_TOKEN")
    number = os.environ.get("PR_NUMBER")
    try:
        metadata = gh_json("pr", "view", number, "--repo", repo, "--json", "headRefName,headRepository,labels", token=token)
        branch = metadata.get("headRefName", "")
        if not branch.startswith(("automation/discovered-", "automation/cask-updates-")):
            raise RuntimeError("PR head branch is not an automation branch")
        if metadata.get("headRepository", {}).get("nameWithOwner") != repo:
            raise RuntimeError("PR head repository does not match target repository")
        if not any(item.get("name") == "automation" for item in metadata.get("labels", [])):
            raise RuntimeError("PR does not have the automation label")
        run("gh", "pr", "checkout", number, "--repo", repo)
        refs = gh_json("pr", "view", number, "--repo", repo, "--json", "baseRefOid,headRefOid", token=token)
        base_sha, head_sha = refs["baseRefOid"], refs["headRefOid"]
        changed = run("git", "diff", "--diff-filter=AM", "--name-only", base_sha, head_sha, "--", "Casks/*.rb", capture=True).stdout.splitlines()
        if not changed:
            raise RuntimeError("No added or modified Casks/*.rb files found in the PR")
        for filename in changed:
            path = Path(filename)
            if not path.is_file():
                raise RuntimeError(f"Changed cask file is missing: {filename}")
            run("ruby", "-c", filename)
            source = path.read_text()
            checks = (
                (r'^cask "[a-z0-9][a-z0-9-]*" do$', "missing or invalid cask token declaration"),
                (r'^  url "https?://', "missing or invalid HTTP(S) URL"),
                (r'^  sha256 ("[0-9a-f]{64}"|:no_check)$', "missing or invalid sha256"),
                (r'^  depends_on :macos$', "missing macOS dependency declaration"),
            )
            for pattern, message in checks:
                if not re.search(pattern, source, re.M):
                    raise RuntimeError(f"{filename}: {message}")
        run("brew", "tap", repo, str(ROOT))
        for filename in changed:
            source = Path(filename).read_text()
            match = re.search(r'^cask "([a-z0-9-]+)" do$', source, re.M)
            if not match:
                raise RuntimeError(f"{filename}: cannot read cask token")
            token_name = match.group(1)
            print(f"Installing {token_name} from {filename}")
            run("brew", "install", "--cask", "--verbose", f"{repo}/{token_name}")
            run("brew", "uninstall", "--cask", "--force", f"{repo}/{token_name}")
    except Exception as error:
        body = "Cask validation failed.\n\n```text\n" + str(error)[-4000:] + "\n```\n\nWorkflow run: " + os.environ.get("GITHUB_SERVER_URL", "https://github.com") + "/" + repo + "/actions/runs/" + os.environ.get("GITHUB_RUN_ID", "")
        gh("pr", "comment", number, "--repo", repo, "--body", body, token=token, check=False)
        raise

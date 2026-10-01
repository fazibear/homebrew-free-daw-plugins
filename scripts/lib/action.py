"""Run action subprocesses and GitHub CLI commands consistently."""
import json
import os
import subprocess
import sys


def run(*args, check=True, capture=False, text=True, env=None, cwd=None):
    result = subprocess.run(
        [str(arg) for arg in args],
        check=False,
        capture_output=capture,
        text=text,
        env=env,
        cwd=cwd,
    )
    if check and result.returncode:
        if capture and result.stderr:
            sys.stderr.write(result.stderr)
        raise subprocess.CalledProcessError(result.returncode, result.args)
    return result


def gh(*args, token=None, check=True):
    env = os.environ.copy()
    if token:
        env["GH_TOKEN"] = token
    result = run("gh", *args, capture=True, env=env, check=check)
    if result.stdout:
        sys.stdout.write(result.stdout)
    if result.stderr:
        sys.stderr.write(result.stderr)
    return result


def gh_json(*args, token=None):
    env = os.environ.copy()
    if token:
        env["GH_TOKEN"] = token
    result = run("gh", *args, capture=True, env=env)
    return json.loads(result.stdout or "null")


def configure_git():
    run("git", "config", "user.name", "github-actions[bot]")
    run("git", "config", "user.email", "41898282+github-actions[bot]@users.noreply.github.com")


def repo_env():
    return os.environ.get("REPOSITORY") or os.environ.get("GITHUB_REPOSITORY")


def base_branch():
    return os.environ.get("GITHUB_REF_NAME", "main")


def pr_body(lines):
    return "\n".join(lines)

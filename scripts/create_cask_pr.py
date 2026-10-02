#!/usr/bin/env python3
"""GitHub Actions entry point for creating a cask PR from a supplied URL."""
from lib.actions import create_url_pr_action

if __name__ == "__main__":
    create_url_pr_action()

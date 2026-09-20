# Free DAW Plugins Homebrew Casks

The hourly discovery workflows search GitHub releases and parse the Plugins4Free instruments directory for macOS `.pkg` and `.dmg` releases, creating one candidate cask per pull request with automatic validation. GitHub discovery uses the automatic `GITHUB_TOKEN`; the Plugins4Free parser requires no search API key. If the repository setting “Allow GitHub Actions to create and approve pull requests” is disabled, add a `CASK_BOT_TOKEN` repository secret containing a fine-grained token with Contents and Pull requests write access.

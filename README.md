# Free DAW Plugins Homebrew Casks

The daily `Discover free audio plugins` workflow searches GitHub and the wider web for macOS `.pkg` and `.dmg` releases, creates candidate casks, and opens a pull request for review. It uses public DuckDuckGo HTML search, so no search API key is required. GitHub discovery uses the automatic `GITHUB_TOKEN`. Generated pull requests are intentionally candidates: review licensing, download URLs, checksums, and installer behavior before merging.

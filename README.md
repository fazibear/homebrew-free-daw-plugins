# Free DAW Plugins — Homebrew Cask Tap

Homebrew casks for free audio plugins and music-production tools for macOS.

This tap includes instruments, effects, analyzers, utilities, and plugin bundles distributed as macOS installers or archives. Availability and licensing belong to the original plugin authors.

## Install the tap

```sh
brew tap fazibear/free-daw-plugins
brew install --cask peakeater
```

Search the tap with:

```sh
brew search fazibear/free-daw-plugins
```

Remove a plugin with `brew uninstall --cask <cask-name>`.

## Plugin formats

Casks may install VST, VST3, Audio Unit, CLAP, or complete plugin bundles. The exact format and installation location depend on the downloaded package. Check the cask and upstream project before installing.

### ZIP downloads from Plugins4Free

Plugins4Free ZIP links are direct downloads, but a successful download does not mean
the plugin is installable on current macOS. Add a ZIP cask only after checking the
archive contents and the plugin's macOS compatibility. In particular, legacy
Maize Sampler AU/VST bundles (including VSCO2 Organ, [plugin 2726](https://plugins4free.com/plugin/2726/))
are not compatible with macOS Catalina and later, according to the upstream plugin
author. Those archives should not be published as working casks for supported
modern macOS versions.

For compatible ZIPs, use Homebrew's `artifact` stanza to install the actual
`.component`, `.vst`, `.vst3`, or `.clap` bundle into the corresponding user plugin
directory. Preserve any resource folder or other files the plugin needs alongside
the bundle; installing only the plugin binary often results in a plugin that is
visible to a DAW but cannot load its presets or samples. Prefer a tested, versioned
upstream archive with a real SHA-256 checksum. If the archive has no stable version
or checksum, document that limitation in the cask.

Most plugins require macOS and may need approval in **System Settings → Privacy & Security** the first time they are opened by a DAW.

## Browse

Browse the [`Casks`](Casks) directory. Each cask includes the upstream homepage, version, download URL, macOS requirement, and installer or artifact configuration.

## Automated discovery

The repository periodically searches GitHub releases and Plugins4Free for new macOS plugin downloads. Discovery creates pull requests; it does not silently add software to the tap. Candidates are checked for cask syntax and basic metadata before merging.

Automated suggestions can be incomplete or incorrect. Review the upstream release, license, download URL, checksum, and installed plugin locations before approving a change.

## License and responsibility

This repository contains Homebrew cask definitions, not the plugin software itself. Plugins remain the property of their respective authors and are governed by their own licenses. Consult upstream projects for support, licensing, and compatibility information.

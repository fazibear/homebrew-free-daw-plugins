# Free DAW Plugins

Install free audio plugins and music-production tools on macOS with Homebrew.

## Install a plugin

Install the tap, then install a plugin by its cask name:

```sh
brew tap fazibear/free-daw-plugins
brew install --cask peakeater
```

Find available plugins with:

```sh
brew search fazibear/free-daw-plugins
```

Remove a plugin with:

```sh
brew uninstall --cask peakeater
```

## Use a plugin

Plugins may be available as VST, VST3, Audio Unit, CLAP, or standalone apps. Open your DAW and rescan its plugins if the new plugin does not appear. The supported formats and installation details vary by plugin; check its product page for DAW and macOS compatibility.

macOS may ask you to approve a plugin the first time you open it. Review the prompt in **System Settings → Privacy & Security**.

Plugins are provided by their original developers. Check each developer's license and support information before use.

## Generate an Open Audio Stack registry

Run the **Generate Open Audio Stack registry** GitHub Actions workflow to export
all casks as a downloadable artifact. It includes import drafts, a missing
metadata report, and registry endpoints for complete entries. See
[registry export instructions](registry/README.md) for metadata overrides and
local generation.

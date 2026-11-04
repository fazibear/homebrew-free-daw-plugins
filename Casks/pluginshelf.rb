cask "pluginshelf" do
  version "1.1.2"
  sha256 "c5f2401ceae581ce492d579701564c26619726833cb0d06f572f15e67e0b4501"
  url "https://github.com/xincheng1237/PluginShelf/releases/download/v1.1.2/PluginShelf-1.1.2-macOS-Universal.dmg"
  name "PluginShelf"
  desc "Free audio plugin"
  homepage "https://github.com/xincheng1237/PluginShelf"
  depends_on :macos
  container type: :dmg
  app "PluginShelf.app"
end

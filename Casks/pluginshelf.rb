cask "pluginshelf" do
  version "1.1"
  sha256 "c938cbe78d73932e5eb5e14fe90d724087556d07a766b6f438d2897164a59c90"
  url "https://github.com/xincheng1237/PluginShelf/releases/download/v1.1/PluginShelf-1.1-macOS-Universal.dmg"
  name "PluginShelf"
  desc "Free audio plugin"
  homepage "https://github.com/xincheng1237/PluginShelf"
  depends_on :macos
  container type: :dmg
  app "PluginShelf.app"
end

cask "sonora" do
  version "0.1.55"
  sha256 "5f3471c8f18d3d808172af1a912467c33644b20643984e789b88e30812d64439"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.55/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

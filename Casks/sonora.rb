cask "sonora" do
  version "0.1.25"
  sha256 "647de6341c5f40544eba73692248d7c9a7c726f82e3fd24f470f70cedbeff8ea"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.25/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

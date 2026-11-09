cask "sonora" do
  version "0.1.27"
  sha256 "4fe5a01f7dc49b13e1338e3ab49876deaa89939064b2c3896651a3e2e6f99971"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.27/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

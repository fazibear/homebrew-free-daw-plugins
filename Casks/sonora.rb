cask "sonora" do
  version "0.1.54"
  sha256 "952c2456a165a8fc02cbc7edb015e7c8c85d30578c25c58b92133327dc3b0d16"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.54/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

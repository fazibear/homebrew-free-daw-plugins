cask "sonora" do
  version "0.1.39"
  sha256 "5fa435c5cf9b7e2baf7e43c37738427a8680ba08c80a55090a59cfa630956fa9"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.39/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

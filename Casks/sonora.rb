cask "sonora" do
  version "0.1.28"
  sha256 "1955ec7f430243f3fa6dea7f5e727de451f6089cef7a1b600fad4c1ea0f2bc10"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.28/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

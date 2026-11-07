cask "sonora" do
  version "0.1.23"
  sha256 "8411bd93a1f8c42c4fb2f1b582b618bc36a220d916b75567034d0f0cc7417bb1"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.23/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

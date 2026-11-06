cask "sonora" do
  version "0.1.13"
  sha256 "bc859cc834049ec84c83e1e6cc9bcfdb706016796ea97702a2b93c4a21e9624d"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.13/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

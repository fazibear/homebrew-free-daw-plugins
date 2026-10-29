cask "sonora" do
  version "0.1.5"
  sha256 "53931097e4d7d27aa67fb234bca1dee85ad8642aa73ea0c0e7ac3cb9f1df2550"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.5/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

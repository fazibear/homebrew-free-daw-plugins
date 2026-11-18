cask "sonora" do
  version "0.1.52"
  sha256 "cacb1372025709ced7d4605e4f01a70040b8957d52404d2a0c3ca3d483b9eddd"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.52/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

cask "sonora" do
  version "0.1.8"
  sha256 "f39959a07f8fffcd34d87a48cdf263ad75333bf88fd67c08b5807f3e1fbefa7f"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.8/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

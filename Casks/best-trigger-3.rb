cask "best-trigger-3" do
  version "0.3.21"
  sha256 "5be3d38e96c64d021be0967caa2f1be19e8f938fb30ba804849cb812427ae6bb"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.21/BestTrigger3-0.3.21-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.21-macOS.pkg"
end

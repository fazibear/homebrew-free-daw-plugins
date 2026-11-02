cask "best-trigger-3" do
  version "0.3.10"
  sha256 "059d2c46cb3694eca391d2ad0a1f4612e6d495217e79dd150b6c753e173cf0e3"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.10/BestTrigger3-0.3.10-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.10-macOS.pkg"
end

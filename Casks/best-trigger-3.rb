cask "best-trigger-3" do
  version "0.3.20"
  sha256 "66472764a397cd797af94270e455a47f1839652165b95328c700d24d7e651c55"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.20/BestTrigger3-0.3.20-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.20-macOS.pkg"
end

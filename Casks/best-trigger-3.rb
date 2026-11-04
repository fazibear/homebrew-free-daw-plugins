cask "best-trigger-3" do
  version "0.3.11"
  sha256 "def4d8289ca9bb8a72be7dad88044e8803f4860ab764bee22b35ccdea2eb94a5"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.11/BestTrigger3-0.3.11-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.11-macOS.pkg"
end

cask "best-trigger-3" do
  version "0.3.12"
  sha256 "53408288b4c8b2ec8fa8d0f4ecdf48b3a84bcc5e5548cf8a062bc58c605775ce"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.12/BestTrigger3-0.3.12-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.12-macOS.pkg"
end

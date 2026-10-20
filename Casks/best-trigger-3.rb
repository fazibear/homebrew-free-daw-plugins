cask "best-trigger-3" do
  version "0.3.5"
  sha256 "b098397086a3ac5dc4770c09178a8681959bb4bd74f5d693ea076c0a067bef0a"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.5/BestTrigger3-0.3.5-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.5-macOS.pkg"
end

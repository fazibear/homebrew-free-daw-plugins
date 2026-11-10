cask "best-trigger-3" do
  version "0.3.19"
  sha256 "364f6b4a85bf44f28d76e23339bfb4e9d000f44da0df3be26ee8400652b6e582"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.19/BestTrigger3-0.3.19-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.19-macOS.pkg"
end

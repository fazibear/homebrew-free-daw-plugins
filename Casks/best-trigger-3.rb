cask "best-trigger-3" do
  version "0.3.13"
  sha256 "dd24c033e407c107bad0e2c13d83d3c9d4763156b195bc712837b380a6430c05"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.13/BestTrigger3-0.3.13-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.13-macOS.pkg"
end

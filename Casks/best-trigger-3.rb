cask "best-trigger-3" do
  version "0.3.8"
  sha256 "de29ee84f0522add3b1d90fd58edc5aa97d8653fd4be17f0dd5a46f9c7fc9a9b"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.8/BestTrigger3-0.3.8-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.8-macOS.pkg"
end

cask "best-trigger-3" do
  version "0.3.7"
  sha256 "8f758688c8d8a9f13531842dbbd9fd6d4cd38e0503c127120215b653cbd2cc23"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.7/BestTrigger3-0.3.7-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.7-macOS.pkg"
end

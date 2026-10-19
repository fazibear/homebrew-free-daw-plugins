cask "best-trigger-3" do
  version "0.3.3"
  sha256 "a9ed3a820d994813895a743f2222d95431ba94b394c7e7bfcc7122d3861b9663"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.3/BestTrigger3-0.3.3-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.3-macOS.pkg"
end

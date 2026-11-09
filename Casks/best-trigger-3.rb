cask "best-trigger-3" do
  version "0.3.14"
  sha256 "1e035259b449248224872da82b63bfba7acba985974fb0d5b35d36fa1b32aef7"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.14/BestTrigger3-0.3.14-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.14-macOS.pkg"
end

cask "best-trigger-3" do
  version "0.3.6"
  sha256 "5903c49c56ab94fe34c1bfe725f81681baf3f08ab5afccd43967b00e5fccef1b"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.6/BestTrigger3-0.3.6-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.6-macOS.pkg"
end

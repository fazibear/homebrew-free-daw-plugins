cask "best-trigger-3" do
  version "0.3.0"
  sha256 "b753c17b425215c412be32311ffacd0a97152d38f794de207a07c5baef280505"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.0/BestTrigger3-0.3.0-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.0-macOS.pkg"
end

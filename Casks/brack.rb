cask "brack" do
  version "1.2.0"
  sha256 "308f147fe059c3125bb61420faedcea6c86d8a2512f1f139b2c2565602e6bef2"
  url "https://github.com/hsshss/brack/releases/download/v1.2.0/brack-1.2.0-osx-universal.zip"
  name "brack"
  desc "Free audio plugin"
  homepage "https://github.com/hsshss/brack"
  depends_on :macos
  app "brack-1.2.0-osx-universal/Brack.app"
end

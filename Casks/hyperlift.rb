cask "hyperlift" do
  version "1.1.0"
  sha256 "1e7f72b91af7c25d3a6e566aeb8936127f4f97fb29c5701fb10740399f000d9d"
  url "https://github.com/alexlarichev/hyperlift-releases/releases/download/v1.1.0/Hyperlift-1.1.0-mac.dmg"
  name "Hyperlift Releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/hyperlift-releases"
  depends_on :macos
  dmg "Hyperlift-1.1.0-mac.dmg"
end

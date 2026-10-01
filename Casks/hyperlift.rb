cask "hyperlift" do
  version "1.1.1"
  sha256 "fb226fe69c1e78443e1841a3ed24db6e527ddf16e71ef77104c7a295857154bc"
  url "https://github.com/alexlarichev/hyperlift-releases/releases/download/v1.1.1/Hyperlift-mac.dmg"
  name "hyperlift-releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/hyperlift-releases"
  depends_on :macos
  container type: :dmg
  pkg "Install Hyperlift.pkg"
end

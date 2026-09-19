cask "blue-cat-triple-eq" do
  version "4.5"
  sha256 "c73f0e6c10f59319d2c8ebc65496ca29c39c10423d2e853fcad1afd37dbc5939"

  url "https://www.bluecataudio.com/Vault/Products/Product_TripleEQ/BlueCatTripleEQ.dmg"
  name "Blue Cat's Triple EQ"
  desc "Free three-band equalizer plugin"
  homepage "https://www.bluecataudio.com/Products/Product_TripleEQ/"

  depends_on :macos

  pkg "Install Blue Cat's Triple EQ 4.pkg"
end

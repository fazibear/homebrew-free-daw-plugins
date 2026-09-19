cask "blue-cat-flanger" do
  version "3.5"
  sha256 "8eeed73be9dfc317b945ee9d90904335df33dcc3ff0de0ac3b9cc42415292a88"

  url "https://www.bluecataudio.com/Vault/Products/Product_Flanger/BlueCatFlanger.dmg"
  name "Blue Cat's Flanger"
  desc "Free flanger audio plugin"
  homepage "https://www.bluecataudio.com/Products/Product_Flanger/"

  depends_on :macos

  pkg "Install Blue Cat's Flanger 3.pkg"
end

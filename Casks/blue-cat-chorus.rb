cask "blue-cat-chorus" do
  version "4.5"
  sha256 "c8521bb0a662b8a83f7f5f4f380c0e45e8233d711906360a291bddad3ed3ff3a"

  url "https://www.bluecataudio.com/Vault/Products/Product_Chorus/BlueCatChorus.dmg"
  name "Blue Cat's Chorus"
  desc "Free chorus audio plugin"
  homepage "https://www.bluecataudio.com/Products/Product_Chorus/"

  depends_on :macos

  pkg "Install Blue Cat's Chorus 4.pkg"
end

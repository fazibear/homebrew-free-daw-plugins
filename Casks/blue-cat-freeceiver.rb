cask "blue-cat-freeceiver" do
  version "1.31"
  sha256 "96c4e4872d78898a956f173d08437b9bb30fabdf1835cbee8fd0a04a2ea651a7"

  url "https://www.bluecataudio.com/Vault/Products/Product_Freeceiver/BlueCatFreeceiver.dmg"
  name "Blue Cat's Freeceiver"
  desc "Free creative audio effects plugin"
  homepage "https://www.bluecataudio.com/Products/Product_Freeceiver/"

  depends_on :macos

  pkg "Install Blue Cat's Freeceiver.pkg"
end

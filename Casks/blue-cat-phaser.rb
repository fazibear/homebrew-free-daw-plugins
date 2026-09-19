cask "blue-cat-phaser" do
  version "3.5"
  sha256 "7a47425cfaee4ef78db7514aa987f5cbecb382ead5d967d48651caf61ca4114a"

  url "https://www.bluecataudio.com/Vault/Products/Product_Phaser/BlueCatPhaser.dmg"
  name "Blue Cat's Phaser"
  desc "Free phaser audio plugin"
  homepage "https://www.bluecataudio.com/Products/Product_Phaser/"

  depends_on :macos

  pkg "Install Blue Cat's Phaser 3.pkg"
end

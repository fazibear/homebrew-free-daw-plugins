cask "blue-cat-free-amp" do
  version "1.3"
  sha256 "9aeed1a6cca1b427081603905a4cd4b0ba2cc2077ef7506e6ae16072b5b973e2"

  url "https://www.bluecataudio.com/Vault/Products/Product_FreeAmp/BlueCatFreeAmp.dmg"
  name "Blue Cat's Free Amp"
  desc "Free bass and guitar amplifier plugin"
  homepage "https://www.bluecataudio.com/Products/Product_FreeAmp/"

  depends_on :macos

  pkg "Install Blue Cat's Free Amp.pkg"
end

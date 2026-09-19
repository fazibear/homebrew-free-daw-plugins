cask "blue-cat-gain-suite" do
  version "3.5"
  sha256 "af61bc5a5c80bb1bb26a65b8877d9a9b0d14df7aea8539a8bcad4d971c0b5abd"

  url "https://www.bluecataudio.com/Vault/Products/Product_GainSuite/BlueCatGainSuite.dmg"
  name "Blue Cat's Gain Suite"
  desc "Free audio gain and panning plugin"
  homepage "https://www.bluecataudio.com/Products/Product_GainSuite/"

  depends_on :macos

  pkg "Install Blue Cat's Gain 3.pkg"
end

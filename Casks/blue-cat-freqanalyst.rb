cask "blue-cat-freqanalyst" do
  version "2.5"
  sha256 "8051ca4caf0bdb3103aec073c313d9ff6a1b83e3e6c69af9b8d48db975714c57"

  url "https://www.bluecataudio.com/Vault/Products/Product_FreqAnalyst/BlueCatFreqAnalyst.dmg"
  name "Blue Cat's FreqAnalyst"
  desc "Free real-time spectrum analyzer plugin"
  homepage "https://www.bluecataudio.com/Products/Product_FreqAnalyst/"

  depends_on :macos

  pkg "Install Blue Cat's FreqAnalyst 2.pkg"
end

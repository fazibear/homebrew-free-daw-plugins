cask "phoqer" do
  version "1.1.0"
  sha256 "9687b31713227cdaf006d7939fe1f6cd279cc20db82c86f8cb88b29409c0e806"
  url "https://github.com/lew0nn/phoqer/releases/download/v1.1.0/PHOQER-1.1.0-macOS.dmg"
  name "phoqer"
  desc "Free audio plugin"
  homepage "https://github.com/lew0nn/phoqer"
  depends_on :macos
  container type: :dmg
  pkg "Install PHOQER.pkg"
end

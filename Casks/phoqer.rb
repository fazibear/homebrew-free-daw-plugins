cask "phoqer" do
  version "1.1.1"
  sha256 "bfe21e9cb05a3538d2e5325d92a6ee5a9a03ebf890f8d8b88e30b3e257f22db0"
  url "https://github.com/lew0nn/phoqer/releases/download/v1.1.1/PHOQER-1.1.1-macOS.dmg"
  name "phoqer"
  desc "Free audio plugin"
  homepage "https://github.com/lew0nn/phoqer"
  depends_on :macos
  container type: :dmg
  pkg "Install PHOQER.pkg"
end

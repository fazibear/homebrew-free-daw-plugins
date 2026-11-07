cask "plectrify" do
  version "0.1.8"
  sha256 "2d517b2225b57cd375aa4e7545861b60eafc03d97546dcf1dcc59d908f2a80f3"
  url "https://github.com/patrickiel/plectrify/releases/download/v0.1.8/Plectrify-macos-arm64.pkg"
  name "plectrify"
  desc "Free audio plugin"
  homepage "https://github.com/patrickiel/plectrify"
  depends_on :macos
  pkg "Plectrify-macos-arm64.pkg"
end

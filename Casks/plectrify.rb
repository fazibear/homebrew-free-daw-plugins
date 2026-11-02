cask "plectrify" do
  version "0.1.6"
  sha256 "a074f72532d505d203f7d7606c49fe3fe38fc9de3f8fed8ab9cf12a72a52873e"
  url "https://github.com/patrickiel/plectrify/releases/download/v0.1.6/Plectrify-macos-arm64.pkg"
  name "plectrify"
  desc "Free audio plugin"
  homepage "https://github.com/patrickiel/plectrify"
  depends_on :macos
  pkg "Plectrify-macos-arm64.pkg"
end

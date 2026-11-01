cask "plectrify" do
  version "0.1.5"
  sha256 "8e2dcb4cf5a63d9ea086c50a545d5bdf360bba3485f61ed64d2c9215778e259e"
  url "https://github.com/patrickiel/plectrify/releases/download/v0.1.5/Plectrify-macos-arm64.pkg"
  name "plectrify"
  desc "Free audio plugin"
  homepage "https://github.com/patrickiel/plectrify"
  depends_on :macos
  pkg "Plectrify-macos-arm64.pkg"
end

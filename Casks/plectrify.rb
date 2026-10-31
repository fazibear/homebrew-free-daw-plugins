cask "plectrify" do
  version "0.1.3"
  sha256 "418cfe9afc66a9b37f8dfef8f770575867fa0a263ea0ea43153890ef6e80c057"
  url "https://github.com/patrickiel/plectrify/releases/download/v0.1.3/Plectrify-macos-arm64.pkg"
  name "plectrify"
  desc "Free audio plugin"
  homepage "https://github.com/patrickiel/plectrify"
  depends_on :macos
  pkg "Plectrify-macos-arm64.pkg"
end

cask "plectrify" do
  version "0.1.7"
  sha256 "29b799697e6dfac97d5764b31ebec4b1771f5a22c7ff4f33ebf8753feaf0934a"
  url "https://github.com/patrickiel/plectrify/releases/download/v0.1.7/Plectrify-macos-arm64.pkg"
  name "plectrify"
  desc "Free audio plugin"
  homepage "https://github.com/patrickiel/plectrify"
  depends_on :macos
  pkg "Plectrify-macos-arm64.pkg"
end

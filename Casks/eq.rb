cask "eq" do
  version "1.0.0"
  sha256 "36f0d5142b3cb7a91bce910de43801b7c2fd9baa78cba00761ecfa3bb5fb2a70"
  url "https://github.com/lukeglad/EQ/releases/download/v1.0.0/EQ-1.0.0.pkg"
  name "EQ"
  desc "Free audio plugin"
  homepage "https://github.com/lukeglad/EQ"
  depends_on :macos
  pkg "EQ-1.0.0.pkg"
end

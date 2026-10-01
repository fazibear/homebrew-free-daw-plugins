cask "vaporateraw" do
  version "1.0.1"
  sha256 "944f5d5579e1e176166817362982175d906bc33da91766f3de9f4af0e3ee78d9"
  url "https://github.com/remiblaze/VaporateRaw/releases/download/v1.0.1/VaporateRaw_Installer.pkg"
  name "VaporateRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/VaporateRaw"
  depends_on :macos
  pkg "VaporateRaw_Installer.pkg"
end

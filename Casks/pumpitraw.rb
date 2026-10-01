cask "pumpitraw" do
  version "1.0.1"
  sha256 "e633f8470ede0b614a98c346a3a97edafb68c5bdb0de6c7e927f16ccd5b4c584"
  url "https://github.com/remiblaze/PumpitRaw/releases/download/v1.0.1/PumpitRaw_Installer.pkg"
  name "PumpitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/PumpitRaw"
  depends_on :macos
  pkg "PumpitRaw_Installer.pkg"
end

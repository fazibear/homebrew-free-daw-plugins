cask "hazexraw" do
  version "1.0.1"
  sha256 "f1200f3fb0c8fdddbadde3381716cff7ea187f1159d353a0a3cd869df3bfcaac"
  url "https://github.com/remiblaze/HazexRaw/releases/download/v1.0.1/HazexRaw_Installer.pkg"
  name "HazexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/HazexRaw"
  depends_on :macos
  pkg "HazexRaw_Installer.pkg"
end

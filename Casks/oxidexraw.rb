cask "oxidexraw" do
  version "1.0.1"
  sha256 "646d6aee272ba373619e092ee5c0327e29c8f995bbe8fb88c449880374142c22"
  url "https://github.com/remiblaze/OxidexRaw/releases/download/v1.0.1/OxidexRaw_Installer.pkg"
  name "OxidexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/OxidexRaw"
  depends_on :macos
  pkg "OxidexRaw_Installer.pkg"
end

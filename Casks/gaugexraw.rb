cask "gaugexraw" do
  version "1.0.1"
  sha256 "91b0921826563030f40ca6ac5f94af465db2c969069d5736ef9ef70214b73915"
  url "https://github.com/remiblaze/GaugexRaw/releases/download/v1.0.1/GaugexRaw_Installer.pkg"
  name "GaugexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/GaugexRaw"
  depends_on :macos
  pkg "GaugexRaw_Installer.pkg"
end

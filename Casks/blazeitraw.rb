cask "blazeitraw" do
  version "1.0.1"
  sha256 "97152db24f3e8d38848a8ef92ae7a5732ca11f7f761893867339d0fd9e1d0d34"
  url "https://github.com/remiblaze/BlazeitRaw/releases/download/v1.0.1/BlazeitRaw_Installer.pkg"
  name "BlazeitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/BlazeitRaw"
  depends_on :macos
  pkg "BlazeitRaw_Installer.pkg"
end

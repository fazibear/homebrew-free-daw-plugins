cask "vortixraw" do
  version "1.0.1"
  sha256 "3f35a462f4b603864977fa6c8a92116a1426e5d2398600825315d125f713367a"
  url "https://github.com/remiblaze/VortixRaw/releases/download/v1.0.1/VortixRaw_Installer.pkg"
  name "VortixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/VortixRaw"
  depends_on :macos
  pkg "VortixRaw_Installer.pkg"
end

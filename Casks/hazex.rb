cask "hazex" do
  version "1.1.0"
  sha256 "658de24be1776fdd2d749ff19448d0bf2d2a534adf8409ec5c9328dda9491565"
  url "https://github.com/remiblaze/Hazex/releases/download/v1.1.0/Hazex_Installer.pkg"
  name "Hazex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Hazex"
  depends_on :macos
  pkg "Hazex_Installer.pkg"
end

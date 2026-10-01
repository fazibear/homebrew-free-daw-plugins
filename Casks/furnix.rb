cask "furnix" do
  version "1.1.0"
  sha256 "cd212d9d4b89efb347954331d3f8fc341ae836688bf3c3fabce9dcb8d634f86c"
  url "https://github.com/remiblaze/Furnix/releases/download/v1.1.0/Furnix_Installer.pkg"
  name "Furnix"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Furnix"
  depends_on :macos
  pkg "Furnix_Installer.pkg"
end

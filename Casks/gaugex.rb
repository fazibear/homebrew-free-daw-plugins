cask "gaugex" do
  version "1.1.1"
  sha256 "0e0936042638c4a6a5444d5c4cc30f60972d99dec39a177901ec853608c8f346"
  url "https://github.com/remiblaze/Gaugex/releases/download/v1.1.1/Gaugex_Installer.pkg"
  name "Gaugex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Gaugex"
  depends_on :macos
  pkg "Gaugex_Installer.pkg"
end

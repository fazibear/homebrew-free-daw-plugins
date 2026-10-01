cask "carvixraw" do
  version "1.0.1"
  sha256 "232c110159daa4882519567b17c72363a2690faf0616568f2215bdc71aa8c072"
  url "https://github.com/remiblaze/CarvixRaw/releases/download/v1.0.1/CarvixRaw_Installer.pkg"
  name "CarvixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/CarvixRaw"
  depends_on :macos
  pkg "CarvixRaw_Installer.pkg"
end

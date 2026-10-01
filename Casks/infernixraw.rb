cask "infernixraw" do
  version "1.0.1"
  sha256 "3e09c8cc19823ea98adc275ba455cdff8eb231f4606d1049647e9f74f108799d"
  url "https://github.com/remiblaze/InfernixRaw/releases/download/v1.0.1/InfernixRaw_Installer.pkg"
  name "InfernixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/InfernixRaw"
  depends_on :macos
  pkg "InfernixRaw_Installer.pkg"
end

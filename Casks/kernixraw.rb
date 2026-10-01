cask "kernixraw" do
  version "1.0.1"
  sha256 "4d7b4be41a8742cd2d413867d2366254989b620c6837cd1c96495d99c0ca8121"
  url "https://github.com/remiblaze/KernixRaw/releases/download/v1.0.1/KernixRaw_Installer.pkg"
  name "KernixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/KernixRaw"
  depends_on :macos
  pkg "KernixRaw_Installer.pkg"
end

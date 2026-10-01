cask "bouncit" do
  version "1.0.1"
  sha256 "518c5e9a3ec2fdb91958f1f4ee5c867cb17e016626b9d9d77ec4aa49b365292c"
  url "https://github.com/remiblaze/Bouncit/releases/download/v1.0.1/Bouncit_Installer.pkg"
  name "Bouncit"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Bouncit"
  depends_on :macos
  pkg "Bouncit_Installer.pkg"
end

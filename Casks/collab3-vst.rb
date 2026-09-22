cask "collab3-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/CollaB3-Installer.pkg"
  name "CollaB3"
  desc "CollaB3 is a Hammond B3 vintage tonewheel organ emulation."
  homepage "https://plugins4free.com/plugin/3117"
  depends_on :macos
  pkg "CollaB3-Installer.pkg"
end

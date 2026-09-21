cask "cloudrum-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/APC_1_0_1_Complete_Installer_MAC.dmg"
  name "Cloudrum"
  desc "Cloudrum is a unique and relaxing Steel tongue drum with a range of 3 octaves."
  homepage "https://plugins4free.com/plugin/3181"
  depends_on :macos
  dmg "APC_1_0_1_Complete_Installer_MAC.dmg"
end

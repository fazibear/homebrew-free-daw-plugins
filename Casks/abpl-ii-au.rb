cask "abpl-ii-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ABPL_2_3_1_Complete_Installer.dmg"
  name "ABPL II"
  desc "Ample Bass P Lite II (ABPL) is a free lite version of ABP, recorded on a Fender Precision Bass ."
  homepage "https://plugins4free.com/plugin/2505"
  depends_on :macos
  dmg "ABPL_2_3_1_Complete_Installer.dmg"
end

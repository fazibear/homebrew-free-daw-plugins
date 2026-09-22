cask "ample-guitar-m-lite-ii-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AGML_2_3_1_Complete_Installer.dmg"
  name "Ample Guitar M Lite II"
  desc "Ample Guitar M Lite II is a sampled acoustic guitar ."
  homepage "https://plugins4free.com/plugin/2233"
  depends_on :macos
  dmg "AGML_2_3_1_Complete_Installer.dmg"
end

cask "nwbass-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/WWAYM_NWBass_V1_1.dmg"
  name "NWBass"
  desc "NWBass is a free classic mono bassline synth ."
  homepage "https://plugins4free.com/plugin/1073"
  depends_on :macos
  container type: :dmg
  pkg "WWAYM_NWBass_V1_1.pkg"
end

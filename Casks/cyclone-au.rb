cask "cyclone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SonicCharge-Cyclone_1.0.dmg"
  name "Cyclone"
  desc "Cyclone is a true low-level hardware emulator of the 12-bit Yamaha TX16W sampler ."
  homepage "https://plugins4free.com/plugin/1838"
  depends_on :macos
  dmg "SonicCharge-Cyclone_1.0.dmg"
end

cask "modulair-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/modulair_1_3_2_mac.pkg"
  name "ModulAir"
  desc "ModulAir is a polyphonic modular synthesizer ."
  homepage "https://plugins4free.com/plugin/2914"
  depends_on :macos
  pkg "modulair_1_3_2_mac.pkg"
end

cask "whispair-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/whispair_1_1_4_mac.pkg"
  name "WhispAir"
  desc "WhispAir is a wavetable synthesizer ."
  homepage "https://plugins4free.com/plugin/3482"
  depends_on :macos
  pkg "whispair_1_1_4_mac.pkg"
end

cask "turntablistpro-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/turntablist-au-1.1.0b10.dmg"
  name "TurntablistPro"
  desc "TTP can load a sample and perform turntable style effects on it."
  homepage "https://plugins4free.com/plugin/212"
  depends_on :macos
  dmg "turntablist-au-1.1.0b10.dmg"
end

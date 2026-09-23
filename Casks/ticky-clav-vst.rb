cask "ticky-clav-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TickyClav_2007_07_15.dmg"
  name "Ticky Clav"
  desc "This plugin emulates the ultra-funky sound of the Hohner Clavinet ."
  homepage "https://plugins4free.com/plugin/276"
  depends_on :macos
  dmg "TickyClav_2007_07_15.dmg"
end

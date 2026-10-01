cask "ticky-clav-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TickyClav_2007_07_15.dmg"
  name "Ticky Clav"
  desc "This plugin emulates the ultra-funky sound of the Hohner Clavinet ."
  homepage "https://plugins4free.com/plugin/276"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VST/TickyClav.vst", "{{user}}/Library/Audio/Plug-Ins/VST/TickyClav.vst"
  end
end

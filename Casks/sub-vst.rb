cask "sub-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SUB-Analog-Drums.vst.zip"
  name "SUB"
  desc "SUB is a vintage analog drums module recreating many classic drum sounds and a Sub-frequency oscillator for extra fun!"
  homepage "https://plugins4free.com/plugin/3133"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Plugin/SUB Analog Drums.vst", "{{user}}/Library/Audio/Plug-Ins/VST/SUB Analog Drums.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "Plugin/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/VST/.DS_Store"
  end
end

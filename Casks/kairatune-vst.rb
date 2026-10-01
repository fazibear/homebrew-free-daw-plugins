cask "kairatune-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Kairatune-1.2.5-VSTi-OSX.zip"
  name "Kairatune"
  desc "Kairatune is designed to produce crisp and tight electric sounds for electronic music production."
  homepage "https://plugins4free.com/plugin/1018"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Kairatune-1.2.5-VSTi-OSX/Kairatune.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Kairatune.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "Kairatune-1.2.5-VSTi-OSX/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/VST/.DS_Store"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "Kairatune-1.2.5-VSTi-OSX/readme.txt", "{{user}}/Library/Audio/Plug-Ins/VST/readme.txt"
  end
end

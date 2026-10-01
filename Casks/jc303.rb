cask "jc303" do
  version "0.13.0"
  sha256 "7cf62de758efb6977489480adb3a5dccffdc0e9e203eccf2876dffc41cca48be"
  url "https://github.com/midilab/jc303/releases/download/v0.13.0/jc303-0.13.0-macos_universal-plugins.zip"
  name "jc303"
  desc "Free audio plugin"
  homepage "https://github.com/midilab/jc303"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "JC-303_MacOS_Universal-0.13.0/AU/JC303.component", "{{user}}/Library/Audio/Plug-Ins/Components/JC303.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    copy "JC-303_MacOS_Universal-0.13.0/CLAP/JC303.clap", "{{user}}/Library/Audio/Plug-Ins/CLAP/JC303.clap", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/LV2"
    copy "JC-303_MacOS_Universal-0.13.0/LV2/JC303.lv2", "{{user}}/Library/Audio/Plug-Ins/LV2/JC303.lv2", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "JC-303_MacOS_Universal-0.13.0/VST3/JC303.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/JC303.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "JC-303_MacOS_Universal-0.13.0/Standalone/JC303.app", "{{user}}/Applications/JC303.app", recursive: true
  end
end

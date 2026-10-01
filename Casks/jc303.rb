cask "jc303" do
  version "0.13.0"
  sha256 "7cf62de758efb6977489480adb3a5dccffdc0e9e203eccf2876dffc41cca48be"
  url "https://github.com/midilab/jc303/releases/download/v0.13.0/jc303-0.13.0-macos_universal-plugins.zip"
  name "jc303"
  desc "Free audio plugin"
  homepage "https://github.com/midilab/jc303"
  depends_on :macos
  artifact "JC-303_MacOS_Universal-0.13.0/AU/JC303.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/JC303.component"
  artifact "JC-303_MacOS_Universal-0.13.0/CLAP/JC303.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/JC303.clap"
  artifact "JC-303_MacOS_Universal-0.13.0/LV2/JC303.lv2", target: "#{Dir.home}/Library/Audio/Plug-Ins/LV2/JC303.lv2"
  artifact "JC-303_MacOS_Universal-0.13.0/VST3/JC303.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/JC303.vst3"
  app "JC-303_MacOS_Universal-0.13.0/Standalone/JC303.app", target: "#{Dir.home}/Applications/JC303.app"
end

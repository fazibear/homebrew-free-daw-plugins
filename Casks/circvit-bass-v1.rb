cask "circvit-bass-v1" do
  version "latest"
  sha256 :no_check
  url "https://circvit.com/plugins/download/CIRCVIT_Bass_V1_mac.zip"
  name "CIRCVIT_Bass_V1"
  desc "Free audio plugin"
  homepage "https://circvit.com/plugins/bass/"
  depends_on :macos
  artifact "CIRCVIT_Bass_V1_mac/AU/Circvit Bass.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Circvit Bass.component"
  artifact "CIRCVIT_Bass_V1_mac/VST/Circvit Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Circvit Bass.vst"
  artifact "CIRCVIT_Bass_V1_mac/VST3/Circvit Bass.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Circvit Bass.vst3"
end

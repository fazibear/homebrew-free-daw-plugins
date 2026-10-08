cask "world-stringz-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DSK_World_StringZ_VST3_mac.zip"
  name "World StringZ"
  desc "13 world string instruments : Celtic harp, Cumbus, Dobro, Dulcimer, Guzhen, Kanum, Koto, Luam, Pipa, Pipa tremolo, Sitar, Tar & Turkish Oud."
  homepage "https://plugins4free.com/plugin/1085"
  depends_on :macos
  artifact "DSK World StringZ/DSK World Stringz.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/DSK World Stringz.vst3"
end

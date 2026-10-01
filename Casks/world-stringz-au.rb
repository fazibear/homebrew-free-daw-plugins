cask "world-stringz-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DSK_World_StringZ_AU.zip"
  name "World StringZ"
  desc "13 world string instruments : Celtic harp, Cumbus, Dobro, Dulcimer, Guzhen, Kanum, Koto, Luam, Pipa, Pipa tremolo, Sitar, Tar & Turkish Oud."
  homepage "https://plugins4free.com/plugin/1085"
  depends_on :macos
  artifact "DSK World StringZ/DSK World Stringz.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DSK World Stringz.component"
end

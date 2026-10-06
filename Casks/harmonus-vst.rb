cask "harmonus-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Harmonus_osx_64_vst3.zip"
  name "Harmonus"
  desc "Harmonus was inspired by a Magnus Model 300 Harmonium / organ (a brand of the "Magnus Harmonica Corporation") from our collection in perfect condition."
  homepage "https://plugins4free.com/plugin/3647"
  depends_on :macos
  artifact "Harmonus_v1.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Harmonus_v1.vst3"
end

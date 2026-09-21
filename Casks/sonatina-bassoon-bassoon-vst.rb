cask "sonatina-bassoon-bassoon-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Bassoon.vst.zip"
  name "Sonatina Bassoon Bassoon"
  desc "Sonatina Bassoon Bassoon"
  homepage "https://plugins4free.com/plugin/2309"
  depends_on :macos
  artifact "Sonatina_Bassoon.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

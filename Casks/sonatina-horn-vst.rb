cask "sonatina-horn-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Horn.vst.zip"
  name "Sonatina Horn"
  desc "Sonatina Horn is a sampled horn ."
  homepage "https://plugins4free.com/plugin/2307"
  depends_on :macos
  artifact "Sonatina Horn.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

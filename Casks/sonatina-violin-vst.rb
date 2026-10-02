cask "sonatina-violin-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Violin.vst.zip"
  name "Sonatina Violin"
  desc "Sonatina Violin is a sampled violin ."
  homepage "https://plugins4free.com/plugin/2296"
  depends_on :macos
  artifact "Sonatina Violin.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Violin.vst"
end

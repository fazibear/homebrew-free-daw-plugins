cask "sonatina-trombone-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Trombone.vst.zip"
  name "Sonatina Trombone"
  desc "Sonatina Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2306"
  depends_on :macos
  artifact "Sonatina Trombone.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Trombone.vst"
end

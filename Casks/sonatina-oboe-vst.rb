cask "sonatina-oboe-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Oboe.vst.zip"
  name "Sonatina Oboe"
  desc "Sonatina Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2314"
  depends_on :macos
  artifact "Sonatina_Oboe.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

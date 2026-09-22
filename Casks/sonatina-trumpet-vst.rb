cask "sonatina-trumpet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Trumpet.vst.zip"
  name "Sonatina Trumpet"
  desc "Sonatina Trumpet is a sampled trumpet ."
  homepage "https://plugins4free.com/plugin/2305"
  depends_on :macos
  artifact "Sonatina Trumpet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "sonatina-trumpet-trumpet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Trumpet.vst.zip"
  name "Sonatina Trumpet Trumpet"
  desc "Sonatina Trumpet Trumpet"
  homepage "https://plugins4free.com/plugin/2305"
  depends_on :macos
  artifact "Sonatina_Trumpet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "sonatina-choir-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Choir.vst.zip"
  name "Sonatina Choir"
  desc "Sonatina Choir"
  homepage "https://plugins4free.com/plugin/2310"
  depends_on :macos
  artifact "Sonatina_Choir.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

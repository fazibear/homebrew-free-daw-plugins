cask "sonatina-timpani-timpani-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Timpani.vst.zip"
  name "Sonatina Timpani Timpani"
  desc "Sonatina Timpani Timpani"
  homepage "https://plugins4free.com/plugin/2331"
  depends_on :macos
  artifact "Sonatina_Timpani.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "sonatina-timpani-timpani-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Timpani.component.zip"
  name "Sonatina Timpani Timpani"
  desc "Sonatina Timpani Timpani"
  homepage "https://plugins4free.com/plugin/2331"
  depends_on :macos
  artifact "Sonatina_Timpani.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

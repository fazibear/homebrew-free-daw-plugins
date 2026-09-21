cask "sonatina-choir-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Choir.component.zip"
  name "Sonatina Choir"
  desc "Sonatina Choir"
  homepage "https://plugins4free.com/plugin/2310"
  depends_on :macos
  artifact "Sonatina_Choir.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

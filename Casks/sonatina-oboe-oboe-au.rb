cask "sonatina-oboe-oboe-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Oboe.component.zip"
  name "Sonatina Oboe Oboe"
  desc "Sonatina Oboe Oboe"
  homepage "https://plugins4free.com/plugin/2314"
  depends_on :macos
  artifact "Sonatina_Oboe.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

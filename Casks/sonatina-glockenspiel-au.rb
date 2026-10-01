cask "sonatina-glockenspiel-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Glockenspiel.component.zip"
  name "Sonatina Glockenspiel"
  desc "Sonatina Glockenspiel is a sampled glockenspiel from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2329"
  depends_on :macos
  artifact "Sonatina Glockenspiel.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Glockenspiel.component"
end

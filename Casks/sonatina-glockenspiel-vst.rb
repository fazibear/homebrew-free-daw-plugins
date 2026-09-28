cask "sonatina-glockenspiel-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Glockenspiel.vst.zip"
  name "Sonatina Glockenspiel"
  desc "Sonatina Glockenspiel is a sampled glockenspiel from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2329"
  depends_on :macos
  artifact "Sonatina Glockenspiel.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

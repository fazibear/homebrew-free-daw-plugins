cask "vsco2-glockenspiel-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Glockenspiel_V2.component.zip"
  name "VSCO2 Glockenspiel"
  desc "VSCO2 Glockenspiel is a sampled glockenspiel ."
  homepage "https://plugins4free.com/plugin/2722"
  depends_on :macos
  artifact "VSCO2 Glockenspiel.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

cask "noisetar-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/NUSofting_Noisetar.pkg"
  name "Noisetar"
  desc "Noisetar is a synthesizer dedicated to the generation of many different noise based sounds ."
  homepage "https://plugins4free.com/plugin/2570"
  depends_on :macos
  pkg "NUSofting_Noisetar.pkg"
end

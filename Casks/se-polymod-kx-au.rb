cask "se-polymod-kx-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/OSX-SE-PolyMod-KX.zip"
  name "SE PolyMod KX"
  desc "SE PolyMod KX is a vintage polyphonic semi-modular synthesizer ."
  homepage "https://plugins4free.com/plugin/2893"
  depends_on :macos
  artifact "OSX-SE-PolyMod-KX/AU/SE PolyMod KX.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

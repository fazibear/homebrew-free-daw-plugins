cask "musyng-kite-standard-drums-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Musyng_Kite_Standard_Drums.vst.zip"
  name "Musyng Kite Standard Drums"
  desc "Musyng Kite Standard Drums is a general MIDI drum kit ."
  homepage "https://plugins4free.com/plugin/2318"
  depends_on :macos
  artifact "Musyng Kite Standard Drums.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

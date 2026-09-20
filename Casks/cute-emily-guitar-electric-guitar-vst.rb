cask "cute-emily-guitar-electric-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Karoryfer_Cute_Emily_Guitar.vst.zip"
  name "Cute Emily Guitar Electric guitar"
  desc "Cute Emily Guitar Electric guitar"
  homepage "https://plugins4free.com/plugin/2315"
  depends_on :macos
  artifact "Karoryfer_Cute_Emily_Guitar.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

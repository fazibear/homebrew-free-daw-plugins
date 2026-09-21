cask "combat-loop-drum-machine-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/COMBAT-LOOP_MacVST.zip"
  name "Combat Loop Drum Machine"
  desc "Combat Loop Drum Machine is a drum kits sample and loop based drum VST instrument."
  homepage "https://plugins4free.com/plugin/1846"
  depends_on :macos
  artifact "COMBAT-LOOP_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

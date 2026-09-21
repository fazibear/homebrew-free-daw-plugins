cask "papu-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/PAPU_MacVST.zip"
  name "PAPU"
  desc "PAPU is a Nintendo Gameboy synthesizer emulation ."
  homepage "https://plugins4free.com/plugin/2838"
  depends_on :macos
  artifact "PAPU_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

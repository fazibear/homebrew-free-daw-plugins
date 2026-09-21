cask "rp2a03-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/RP2A03_MacVST.zip"
  name "RP2A03"
  desc "RP2A03 emulates Ricoh 2A03 of the NTSC Nintendo Entertainment System."
  homepage "https://plugins4free.com/plugin/2833"
  depends_on :macos
  artifact "RP2A03_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

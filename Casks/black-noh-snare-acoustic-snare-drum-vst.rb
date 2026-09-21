cask "black-noh-snare-acoustic-snare-drum-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/bns-osx-vst.zip"
  name "Black Noh Snare Acoustic snare drum"
  desc "Black Noh Snare Acoustic snare drum"
  homepage "https://plugins4free.com/plugin/1683"
  depends_on :macos
  artifact "bns-osx-vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

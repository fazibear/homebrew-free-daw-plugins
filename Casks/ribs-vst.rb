cask "ribs-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Ribs_OSX-VST.zip"
  name "Ribs"
  desc "Ribs is a granular instrument / FX ."
  homepage "https://plugins4free.com/plugin/2829"
  depends_on :macos
  artifact "OSX-VST/Ribs.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "ribs-granular-instrument-fx-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Ribs_OSX-VST.zip"
  name "Ribs Granular instrument / FX"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2829"
  depends_on :macos
  artifact "Ribs_OSX-VST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

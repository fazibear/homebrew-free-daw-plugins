cask "iowa-alto-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Alto_Flute.vst.zip"
  name "Iowa Alto Flute"
  desc "Iowa Alto Flute is a sampled alto flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2327"
  depends_on :macos
  artifact "Iowa Alto Flute.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

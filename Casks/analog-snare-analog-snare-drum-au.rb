cask "analog-snare-analog-snare-drum-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AnalogSnare-Lite_MacAU.zip"
  name "Analog Snare Analog snare drum"
  desc "Analog Snare Analog snare drum"
  homepage "https://plugins4free.com/plugin/2228"
  depends_on :macos
  artifact "AnalogSnare-Lite_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

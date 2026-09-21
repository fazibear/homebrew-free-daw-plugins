cask "analog-snare-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AnalogSnare-Lite_MacAU.zip"
  name "Analog Snare"
  desc "Analog Snare offers a set of 10 analog snare drum samples."
  homepage "https://plugins4free.com/plugin/2228"
  depends_on :macos
  artifact "AnalogSnare-Lite_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

cask "analog-kick-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AnalogKick-Lite_MacVST.zip"
  name "Analog Kick"
  desc "Analog Kick offers a set of 10 analog kick drum samples."
  homepage "https://plugins4free.com/plugin/2229"
  depends_on :macos
  artifact "AnalogKick-Lite_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

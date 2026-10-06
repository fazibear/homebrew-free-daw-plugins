cask "explorer-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Explorer-MacVST3.zip"
  name "Explorer"
  desc "Explorer is a waveshaping polyphonic synthesizer with wave shaper and oscillator modulation."
  homepage "https://plugins4free.com/plugin/3814"
  depends_on :macos
  artifact "VST3/Explorer.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Explorer.vst3"
end

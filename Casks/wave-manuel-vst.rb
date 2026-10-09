cask "wave-manuel-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/WaveManuel-Mac-VST3.zip"
  name "Wave Manuel"
  desc "Wave Manuel is waveshaping synthesizer ."
  homepage "https://plugins4free.com/plugin/3828"
  depends_on :macos
  artifact "WaveManuel.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/WaveManuel.vst3"
end

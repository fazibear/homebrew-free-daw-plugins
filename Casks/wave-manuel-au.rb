cask "wave-manuel-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/WaveManuel-Mac-AU.zip"
  name "Wave Manuel"
  desc "Wave Manuel is waveshaping synthesizer ."
  homepage "https://plugins4free.com/plugin/3828"
  depends_on :macos
  artifact "WaveManuel.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/WaveManuel.component"
end

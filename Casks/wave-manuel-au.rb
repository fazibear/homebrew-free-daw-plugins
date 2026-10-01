cask "wave-manuel-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/WaveManuel-Mac-AU.zip"
  name "Wave Manuel"
  desc "Wave Manuel is waveshaping synthesizer ."
  homepage "https://plugins4free.com/plugin/3828"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "WaveManuel.component", "{{user}}/Library/Audio/Plug-Ins/Components/WaveManuel.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "releasenotes.txt", "{{user}}/Library/Audio/Plug-Ins/Components/releasenotes.txt"
  end
end

cask "wave-manuel-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/WaveManuel-Mac-VST3.zip"
  name "Wave Manuel"
  desc "Wave Manuel is waveshaping synthesizer ."
  homepage "https://plugins4free.com/plugin/3828"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "WaveManuel-Mac-VST3.zip.vst", "{{user}}/Library/Audio/Plug-Ins/VST/WaveManuel-Mac-VST3.zip.vst", recursive: true
  end
end

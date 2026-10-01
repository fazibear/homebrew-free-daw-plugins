cask "aspen-cornet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Cornet_vst3.vst.zip"
  name "Aspen Cornet"
  desc "Aspen Cornet ."
  homepage "https://plugins4free.com/plugin/3319"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Aspen Cornet.vst3.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Aspen Cornet.vst3.vst"
  end
end

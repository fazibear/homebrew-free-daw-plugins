cask "merlittzer-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MK_Merlittzer.vst.zip"
  name "Merlittzer"
  desc "Musyng Kite Merlittzer is a sampled Wurlitzer electric piano ."
  homepage "https://plugins4free.com/plugin/2322"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "MK Merlittzer.vst", "{{user}}/Library/Audio/Plug-Ins/VST/MK Merlittzer.vst"
  end
end

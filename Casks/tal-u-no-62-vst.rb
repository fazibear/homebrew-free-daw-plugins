cask "tal-u-no-62-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TAL-U-No-62.vst.zip"
  name "TAL-U-No-62"
  desc "The U-NO-62 vst plugin is a polyphonic virtual analogue synth with a unique filter sound."
  homepage "https://plugins4free.com/plugin/687"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "TAL-U-No-62.vst", "{{user}}/Library/Audio/Plug-Ins/VST/TAL-U-No-62.vst"
  end
end

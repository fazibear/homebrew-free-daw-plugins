cask "vst-speek-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VstSpeek3-MacVST.zip"
  name "VST Speek"
  desc "VST Speek is a speech software synthesizer : it reads the text you type in the text field."
  homepage "https://plugins4free.com/plugin/1863"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VstSpeek3-x64.vst/VstSpeek3-x64.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VstSpeek3-x64.vst"
  end
end

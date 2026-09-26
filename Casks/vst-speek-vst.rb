cask "vst-speek-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VstSpeek3-MacVST.zip"
  name "VST Speek"
  desc "VST Speek is a speech software synthesizer : it reads the text you type in the text field."
  homepage "https://plugins4free.com/plugin/1863"
  depends_on :macos
  artifact "VstSpeek3-x64.vst/__MACOSX/._VstSpeek3-x64.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

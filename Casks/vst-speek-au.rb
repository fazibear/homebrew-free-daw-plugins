cask "vst-speek-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AUSpeek3.zip"
  name "VST Speek"
  desc "VST Speek is a speech software synthesizer : it reads the text you type in the text field."
  homepage "https://plugins4free.com/plugin/1863"
  depends_on :macos
  artifact "AUSpeek3-x64/AUSpeek3.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AUSpeek3.component"
  artifact "AUSpeek3/AUSpeek3.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AUSpeek3.component"
end

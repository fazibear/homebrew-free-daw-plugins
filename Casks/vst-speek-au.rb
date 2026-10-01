cask "vst-speek-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AUSpeek3.zip"
  name "VST Speek"
  desc "VST Speek is a speech software synthesizer : it reads the text you type in the text field."
  homepage "https://plugins4free.com/plugin/1863"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "AUSpeek3-x64/__MACOSX/._AUSpeek3.component", "{{user}}/Library/Audio/Plug-Ins/Components/._AUSpeek3.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/AUSpeek3.component"
    copy "AUSpeek3-x64/__MACOSX/AUSpeek3.component/._Icon", "{{user}}/Library/Audio/Plug-Ins/Components/AUSpeek3.component/._Icon"
  end
end

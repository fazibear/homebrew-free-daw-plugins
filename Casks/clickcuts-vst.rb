cask "clickcuts-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/ClickCuts.vst.zip"
  name "ClickCuts"
  desc "ClickCuts enables sample-accurate loop integration ."
  homepage "https://plugins4free.com/plugin/2939"
  depends_on :macos
  artifact "ClickCuts.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/ClickCuts.vst"
end

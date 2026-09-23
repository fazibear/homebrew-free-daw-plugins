cask "aspen-cornet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Cornet_vst3.vst.zip"
  name "Aspen Cornet"
  desc "Aspen Cornet ."
  homepage "https://plugins4free.com/plugin/3319"
  depends_on :macos
  artifact "Aspen Cornet.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "xs-707-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/XS-707_MacVST.zip"
  name "XS-707"
  desc "XS-707 is a rompler made out of a TR-707 kit sampled from an EMU EMAX 12 bit sampler."
  homepage "https://plugins4free.com/plugin/3119"
  depends_on :macos
  artifact "XS-707.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/XS-707.vst"
end

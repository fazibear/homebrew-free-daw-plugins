cask "dr-84-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DR-84_Mac.zip"
  name "DR-84"
  desc "DR-84 is a drum kit rompler that brings together the sounds of the most popular drum machines of the 80s ."
  homepage "https://plugins4free.com/plugin/3889"
  depends_on :macos
  artifact "DR-84.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DR-84.vst"
end

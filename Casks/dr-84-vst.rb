cask "dr-84-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DR-84_Mac.zip"
  name "DR-84"
  desc "DR-84"
  homepage "https://plugins4free.com/plugin/3889"
  depends_on :macos
  artifact "DR-84_Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

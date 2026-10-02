cask "california-foley-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/California-Foley-MacVST.zip"
  name "California Foley"
  desc "Varazuvi California Foley is a foley sound effects VST plugin."
  homepage "https://plugins4free.com/plugin/1885"
  depends_on :macos
  artifact "California Foley Demo Mac vst/California Foley Demo Mac vst.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/California Foley Demo Mac vst.vst"
end

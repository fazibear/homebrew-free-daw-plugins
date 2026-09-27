cask "iowa-bass-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Bass_Flute.vst.zip"
  name "Iowa Bass Flute"
  desc "Iowa Bass Flute is a sampled bass flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2418"
  depends_on :macos
  artifact "Iowa Bass Flute.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

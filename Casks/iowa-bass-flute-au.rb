cask "iowa-bass-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Bass_Flute.component.zip"
  name "Iowa Bass Flute"
  desc "Iowa Bass Flute is a sampled bass flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2418"
  depends_on :macos
  artifact "Iowa Bass Flute.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

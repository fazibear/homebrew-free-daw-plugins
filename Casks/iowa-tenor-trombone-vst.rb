cask "iowa-tenor-trombone-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Tenor_Trombone.vst.zip"
  name "Iowa Tenor Trombone"
  desc "Iowa Tenor Trombone is a sampled tenor trombone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2420"
  depends_on :macos
  artifact "Iowa Tenor Trombone.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

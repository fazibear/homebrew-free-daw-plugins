cask "nseqarpkeys" do
  version "1.5.1"
  sha256 "b16059a570693aa5e08ba55b7ad23088dacc7422e40229072604287ac958f487"
  url "https://github.com/ncg777/NSeqArpKeys/releases/download/v1.5.1/NSeqArpKeys-1.5.1-macos-universal.zip"
  name "NSeqArpKeys"
  desc "Free audio plugin"
  homepage "https://github.com/ncg777/NSeqArpKeys"
  depends_on :macos
  artifact "NSeqArpKeys.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NSeqArpKeys.component"
  artifact "NSeqArpKeys.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/NSeqArpKeys.vst3"
end

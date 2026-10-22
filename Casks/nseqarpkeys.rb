cask "nseqarpkeys" do
  version "1.6.0"
  sha256 "c52d8a1d89caab234cb5cb2868f2680e9eff2b6f56b5fc84c8ebd45ea07cd72d"
  url "https://github.com/ncg777/NSeqArpKeys/releases/download/v1.6.0/NSeqArpKeys-1.6.0-macos-universal.zip"
  name "NSeqArpKeys"
  desc "Free audio plugin"
  homepage "https://github.com/ncg777/NSeqArpKeys"
  depends_on :macos
  artifact "NSeqArpKeys.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NSeqArpKeys.component"
  artifact "NSeqArpKeys.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/NSeqArpKeys.vst3"
end

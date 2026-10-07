cask "nseqarpkeys" do
  version "1.5.0"
  sha256 "63a3a23417414b1b699eb35379b5d11b88f88e7e49c81f6f815bc0f00737675f"
  url "https://github.com/ncg777/NSeqArpKeys/releases/download/v1.5.0/NSeqArpKeys-1.5.0-macos-universal.zip"
  name "NSeqArpKeys"
  desc "Free audio plugin"
  homepage "https://github.com/ncg777/NSeqArpKeys"
  depends_on :macos
  artifact "NSeqArpKeys.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NSeqArpKeys.component"
  artifact "NSeqArpKeys.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/NSeqArpKeys.vst3"
end

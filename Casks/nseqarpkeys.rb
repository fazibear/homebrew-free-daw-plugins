cask "nseqarpkeys" do
  version "1.4.2"
  sha256 "a1b2ceb08c957d858a60d28f031e4015258caf1b6476fabd1d7fc7a151b21b2b"
  url "https://github.com/ncg777/NSeqArpKeys/releases/download/v1.4.2/NSeqArpKeys-1.4.2-macos-universal.zip"
  name "NSeqArpKeys"
  desc "Free audio plugin"
  homepage "https://github.com/ncg777/NSeqArpKeys"
  depends_on :macos
  artifact "NSeqArpKeys.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NSeqArpKeys.component"
  artifact "NSeqArpKeys.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/NSeqArpKeys.vst3"
end

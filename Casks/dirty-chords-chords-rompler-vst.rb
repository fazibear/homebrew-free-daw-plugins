cask "dirty-chords-chords-rompler-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DIRTY-CHORDS-LITE-v1.1-MAC-VST.zip"
  name "Dirty Chords Chords rompler"
  desc "Dirty Chords Chords rompler"
  homepage "https://plugins4free.com/plugin/2808"
  depends_on :macos
  artifact "DIRTY-CHORDS-LITE-v1.1-MAC-VST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

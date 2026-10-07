cask "exc-te-snare-drum-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/EXCTE-Snare-Drum.dmg"
  name "EXC!TE SNARE DRUM"
  desc "EXC!TE SNARE DRUM is a snare drum features ultra-realistic sound through physical modeling algorithms."
  homepage "https://plugins4free.com/plugin/3514"
  depends_on :macos
  container type: :dmg
  pkg "EXC!TE Snare Drum.pkg"
end

cask "exc-te-cymbal-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/EXCTE-Cymbal.dmg"
  name "EXC!TE CYMBAL"
  desc "EXC!TE CYMBAL is a cymbal plugin features ultra-realistic sound through physical modeling."
  homepage "https://plugins4free.com/plugin/3934"
  depends_on :macos
  dmg "EXCTE-Cymbal.dmg"
end

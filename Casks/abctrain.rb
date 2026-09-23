cask "abctrain" do
  version "1.6.0"
  sha256 "9ee2c81e81ad13313179c23fabb482c3c1e66b177f91d622082936bd95ab48a5"
  url "https://github.com/bogggare567/abcTrain/releases/download/v1.6.0/abcTrain-macOS-1.6.0.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  dmg "abcTrain-macOS-1.6.0.dmg"
end

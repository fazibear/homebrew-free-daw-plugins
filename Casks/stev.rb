cask "stev" do
  version "0.14.0"
  sha256 "54b1ec7bfc1a597fc9d3ebf768a2df7ac3cac35af49996a54256f9fee7692035"
  url "https://github.com/stevmidi/stev/releases/download/v0.14.0/Stev-0.14.0-macos-universal.zip"
  name "stev"
  desc "Free audio plugin"
  homepage "https://github.com/stevmidi/stev"
  depends_on :macos
  app "Stev.app"
end

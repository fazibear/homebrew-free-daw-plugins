cask "stev" do
  version "0.17.0"
  sha256 "6fc9c22184c85af6dbcf9948ccadc4736d5bdcd42995047c49de60eb58b8b3cb"
  url "https://github.com/stevmidi/stev/releases/download/v0.17.0/Stev-0.17.0-macos-universal.zip"
  name "stev"
  desc "Free audio plugin"
  homepage "https://github.com/stevmidi/stev"
  depends_on :macos
  app "Stev.app"
end

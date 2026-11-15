cask "stev" do
  version "0.16.0"
  sha256 "1d9f1bc1e6669851493fae5a161c724ab83a08a19cecf6668fdb659d32e1c601"
  url "https://github.com/stevmidi/stev/releases/download/v0.16.0/Stev-0.16.0-macos-universal.zip"
  name "stev"
  desc "Free audio plugin"
  homepage "https://github.com/stevmidi/stev"
  depends_on :macos
  app "Stev.app"
end

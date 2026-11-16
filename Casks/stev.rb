cask "stev" do
  version "0.16.1"
  sha256 "1abdb0e5cc9aab507dc0043b9686cb1cf37fbb67eb775d4e56058788164ec322"
  url "https://github.com/stevmidi/stev/releases/download/v0.16.1/Stev-0.16.1-macos-universal.zip"
  name "stev"
  desc "Free audio plugin"
  homepage "https://github.com/stevmidi/stev"
  depends_on :macos
  app "Stev.app"
end

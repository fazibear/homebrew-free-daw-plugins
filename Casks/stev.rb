cask "stev" do
  version "0.15.0"
  sha256 "6bad168902015c435b59d7a5038ba6fa955e056aca459cad1f878b14970d0d8d"
  url "https://github.com/stevmidi/stev/releases/download/v0.15.0/Stev-0.15.0-macos-universal.zip"
  name "stev"
  desc "Free audio plugin"
  homepage "https://github.com/stevmidi/stev"
  depends_on :macos
  app "Stev.app"
end

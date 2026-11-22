cask "soundtext" do
  version "1.21.0"
  sha256 "f6d8d617372421c707f73c07f3148f17ac394d047d2a0ac5a3faf35b3cd8a3f8"
  url "https://github.com/openssound/soundtext/releases/download/v1.21.0/SoundText-macos-arm64-v1.21.0.dmg"
  name "soundtext"
  desc "Free audio plugin"
  homepage "https://github.com/openssound/soundtext"
  depends_on :macos
  container type: :dmg
  app "SoundText.app"
end

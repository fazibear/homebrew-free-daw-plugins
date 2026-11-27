cask "soundtext" do
  version "1.23.0"
  sha256 "94b7c3d7ce2f3024eee734b9cf54862af75989fdbbf37619b2d2eb202c3a6d84"
  url "https://github.com/openssound/soundtext/releases/download/v1.23.0/SoundText-macos-arm64-v1.23.0.dmg"
  name "soundtext"
  desc "Free audio plugin"
  homepage "https://github.com/openssound/soundtext"
  depends_on :macos
  container type: :dmg
  app "SoundText.app"
end

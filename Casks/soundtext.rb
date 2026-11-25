cask "soundtext" do
  version "1.22.0"
  sha256 "0fab733d097c7a8a16b3299f42aa9ef87ec14ac9692965056bc88cb7a9038fdc"
  url "https://github.com/openssound/soundtext/releases/download/v1.22.0/SoundText-macos-arm64-v1.22.0.dmg"
  name "soundtext"
  desc "Free audio plugin"
  homepage "https://github.com/openssound/soundtext"
  depends_on :macos
  container type: :dmg
  app "SoundText.app"
end

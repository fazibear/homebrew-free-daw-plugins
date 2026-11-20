cask "soundtext" do
  version "1.20.1"
  sha256 "c9aed24d027ad406af328fed60813bfc3e3974d9eca45c5ea1fd4220862daaa6"
  url "https://github.com/openssound/soundtext/releases/download/v1.20.1/SoundText-macos-arm64-v1.20.1.dmg"
  name "soundtext"
  desc "Free audio plugin"
  homepage "https://github.com/openssound/soundtext"
  depends_on :macos
  container type: :dmg
  app "SoundText.app"
end

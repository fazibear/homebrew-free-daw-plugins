cask "transit" do
  version "0.7.5"
  sha256 "161c7951d5f72fb8bdc35b95f501344cbc0145280bc13e9159d1ecf52b837a16"
  url "https://github.com/transit-audio/transit/releases/download/v0.7.5/transit-v0.7.5-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

cask "transit" do
  version "0.7.3"
  sha256 "5e657e58808bfb214460d66e054977e069c16a4db1e86961b2a16f6a886b5ce7"
  url "https://github.com/transit-audio/transit/releases/download/v0.7.3/transit-v0.7.3-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

cask "transit" do
  version "0.7.2"
  sha256 "b62813de8498033c738b8dd4b32442d088abbd24c6b550358b30e2f9497f3985"
  url "https://github.com/transit-audio/transit/releases/download/v0.7.2/transit-v0.7.2-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

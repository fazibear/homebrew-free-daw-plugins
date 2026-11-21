cask "transit" do
  version "0.7.4"
  sha256 "2bdbb540be9ddf9182dcbbd5ba37a6934f34b3a8044a431667cae914b70826c7"
  url "https://github.com/transit-audio/transit/releases/download/v0.7.4/transit-v0.7.4-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

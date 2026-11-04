cask "transit" do
  version "0.6.2"
  sha256 "2b8c19bd19dc672fa76a9527bd8811dde7a11f3d61f757209b0f5db84ee3941a"
  url "https://github.com/transit-audio/transit/releases/download/v0.6.2/transit-v0.6.2-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

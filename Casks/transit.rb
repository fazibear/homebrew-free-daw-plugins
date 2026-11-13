cask "transit" do
  version "0.7.1"
  sha256 "1ebcca89a2d1055f4642aa821405064fd2b22f00141fcb23a0be3b522e01a5ca"
  url "https://github.com/transit-audio/transit/releases/download/v0.7.1/transit-v0.7.1-macos-arm64.dmg"
  name "transit"
  desc "Free audio plugin"
  homepage "https://github.com/transit-audio/transit"
  depends_on :macos
  container type: :dmg
  app "transit.app"
end

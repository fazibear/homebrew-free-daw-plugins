cask "forgewave" do
  version "1.0.1"
  sha256 "944db8b10f81d67516be0501e38308f968abff4994d04b2a31d5f939a9e7e287"
  url "https://github.com/kikoz85/ForgeWave/releases/download/v1.0.1/ForgeWave-1.0.1-macos-universal.dmg"
  name "ForgeWave"
  desc "Free audio plugin"
  homepage "https://github.com/kikoz85/ForgeWave"
  depends_on :macos
  container type: :dmg
  app "ForgeWave.app"
end

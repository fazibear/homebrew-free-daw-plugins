cask "forgewave" do
  version "1.2.0"
  sha256 "c5aee7429f7e1199d3e46e314db214dfba02f7377ef4d142a220ad0b0c4d66a9"
  url "https://github.com/kikoz85/ForgeWave/releases/download/v1.2.0/ForgeWave-1.2.0-macos-universal.dmg"
  name "ForgeWave"
  desc "Free audio plugin"
  homepage "https://github.com/kikoz85/ForgeWave"
  depends_on :macos
  container type: :dmg
  app "ForgeWave.app"
end

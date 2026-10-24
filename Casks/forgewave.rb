cask "forgewave" do
  version "1.0.0"
  sha256 "30b4311f65a14e66aaddff9c06d04c4387055fbc3033ca264fbe4c70d4f843e1"
  url "https://github.com/kikoz85/ForgeWave/releases/download/v1.0.0/ForgeWave-1.0.0-macos-universal.dmg"
  name "ForgeWave"
  desc "Free audio plugin"
  homepage "https://github.com/kikoz85/ForgeWave"
  depends_on :macos
  container type: :dmg
  app "ForgeWave.app"
end

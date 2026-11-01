cask "forgewave" do
  version "1.1.0"
  sha256 "7b5b2553fb1d1e3d45d4609938fcdc5593347bb8c7951dceb4a1f0fd2a8562fa"
  url "https://github.com/kikoz85/ForgeWave/releases/download/v1.1.0/ForgeWave-1.1.0-macos-universal.dmg"
  name "ForgeWave"
  desc "Free audio plugin"
  homepage "https://github.com/kikoz85/ForgeWave"
  depends_on :macos
  container type: :dmg
  app "ForgeWave.app"
end

cask "ktune" do
  version "1.8.0"
  sha256 "730632ffd97a4555697dd7afa7aa4d8cb50eb69ea20d0761d79a2c76ad30beb9"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.8.0/KTune-Studio-v1.8.0-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

cask "ktune" do
  version "1.6.1"
  sha256 "bc8662373c46df79a6ed340f566fdae6dbaa92f537c68067ca9cf28064449437"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.6.1/KTune-Studio-v1.6.1-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

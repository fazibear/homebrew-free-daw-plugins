cask "ktune" do
  version "1.8.2"
  sha256 "6ffeea88f5276d4d20f3e72b1eda36fe512a28bf27a73e2725d4095b61da2abb"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.8.2/KTune-Studio-v1.8.2-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

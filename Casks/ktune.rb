cask "ktune" do
  version "1.9.1"
  sha256 "143ab1e8183c099c7c1693054e3411491e3ce2e8cae7a6d4eda374e1470bc6f6"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.9.1/KTune-Studio-v1.9.1-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

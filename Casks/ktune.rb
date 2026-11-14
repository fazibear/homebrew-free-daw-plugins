cask "ktune" do
  version "1.10.1"
  sha256 "57d627eebe477c0129d26141c0464382092868edc5b65a23f309f5eeb4c59c74"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.10.1/KTune-Studio-v1.10.1-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

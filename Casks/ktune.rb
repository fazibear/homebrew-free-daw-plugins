cask "ktune" do
  version "1.10.2"
  sha256 "77d2f585b0a8cbaaec3448c554b53c3fe202591ad35b3e000e8ec0fc66ca3f0a"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.10.2/KTune-Studio-v1.10.2-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

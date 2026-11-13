cask "ktune" do
  version "1.10.0"
  sha256 "dd04c9f68e389f724f80124b4b16af576c2b470b0eaa2a5e75cb7785ad5ff6c2"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.10.0/KTune-Studio-v1.10.0-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

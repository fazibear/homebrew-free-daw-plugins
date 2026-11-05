cask "ktune" do
  version "1.7.0"
  sha256 "9eca6b8c15f3c144572af69868679376508911309172dc08773d0b4d9aafd5fa"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.7.0/KTune-Studio-v1.7.0-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

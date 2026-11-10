cask "ktune" do
  version "1.9.3"
  sha256 "3297123c4d76210b354781edf4b849ac0cab786d425cdea603841b66ae24b6b4"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.9.3/KTune-Studio-v1.9.3-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

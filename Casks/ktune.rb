cask "ktune" do
  version "1.9.2"
  sha256 "59bb3d20779e66243063358ef647c342563cbd4da49aa25c2bbfeb6e598ec16b"
  url "https://github.com/KTune-Labs/KTune-Release/releases/download/v1.9.2/KTune-Studio-v1.9.2-macOS.dmg"
  name "KTune-Release"
  desc "Free audio plugin"
  homepage "https://github.com/KTune-Labs/KTune-Release"
  depends_on :macos
  container type: :dmg
  app "KTune Studio.app"
end

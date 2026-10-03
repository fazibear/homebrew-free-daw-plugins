cask "abctrain" do
  version "2.1.1"
  sha256 "13852dd857c68a93b2c5e94b9bf0bb108e0d2d6030ef65c67b2099f686b065fa"
  url "https://github.com/bogggare567/abcTrain/releases/download/v2.1.1/abcTrain-macOS-2.1.0.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  container type: :dmg
  pkg "abcTrain-2.1.0.pkg"
end

cask "dawei-drumscore" do
  version "1.2.8"
  sha256 "0c3275c8913bcea1c3dc45c6bf834accd7b6e07fc4ac8e6997bbef126b190e15"
  url "https://github.com/780566922/dawei-drumscore/releases/download/v1.2.8/DaweiDrumScore-1.2.8-macOS.pkg"
  name "dawei-drumscore"
  desc "Free audio plugin"
  homepage "https://github.com/780566922/dawei-drumscore"
  depends_on :macos
  pkg "DaweiDrumScore-1.2.8-macOS.pkg"
end

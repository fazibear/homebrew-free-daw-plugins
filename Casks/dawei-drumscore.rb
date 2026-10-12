cask "dawei-drumscore" do
  version "1.2.7"
  sha256 "dbc6498b158883f4b2da246f0337a66f67d4b9739a9d4944a224222ef097f9e6"
  url "https://github.com/780566922/dawei-drumscore/releases/download/v1.2.7/DaweiDrumScore-1.2.7-macOS.pkg"
  name "dawei-drumscore"
  desc "Free audio plugin"
  homepage "https://github.com/780566922/dawei-drumscore"
  depends_on :macos
  pkg "DaweiDrumScore-1.2.7-macOS.pkg"
end

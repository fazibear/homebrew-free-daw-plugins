cask "dawei-drumscore" do
  version "1.2.6"
  sha256 "8bc53ca3ec2e27144f4b973aee6be2a49883e1de2070a821ddb25a7b3e434bdd"
  url "https://github.com/780566922/dawei-drumscore/releases/download/v1.2.6/DaweiDrumScore-1.2.6-macOS.pkg"
  name "dawei-drumscore"
  desc "Free audio plugin"
  homepage "https://github.com/780566922/dawei-drumscore"
  depends_on :macos
  pkg "DaweiDrumScore-1.2.6-macOS.pkg"
end

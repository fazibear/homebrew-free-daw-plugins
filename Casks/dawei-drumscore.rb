cask "dawei-drumscore" do
  version "1.2.9"
  sha256 "1d685fea7c9a85470081209631c24b272df5088adeefeb6c5e6ae9117427b164"
  url "https://github.com/780566922/dawei-drumscore/releases/download/v1.2.9/DaweiDrumScore-1.2.9-macOS.pkg"
  name "dawei-drumscore"
  desc "Free audio plugin"
  homepage "https://github.com/780566922/dawei-drumscore"
  depends_on :macos
  pkg "DaweiDrumScore-1.2.9-macOS.pkg"
end

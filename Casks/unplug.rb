cask "unplug" do
  version "0.2.3"
  sha256 "4676e7b7c59d5843902932c1e9d5b3f54663f01c3239543bc9e938560d3db9ae"
  url "https://github.com/ScrapDnB/UnPlug/releases/download/v0.2.3/UnPlug-0.2.3-macOS-universal.zip"
  name "UnPlug"
  desc "Free audio plugin"
  homepage "https://github.com/ScrapDnB/UnPlug"
  depends_on :macos
  pkg "UnPlug 0.2.3/UnPlug Local Helper.pkg"
end

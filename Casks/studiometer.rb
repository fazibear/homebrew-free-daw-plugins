cask "studiometer" do
  version "StudioMeter"
  sha256 "8139668748188758eafb400e3dc66ab8ed92e9e4fdac2fa34bb89efcf5223acb"
  url "https://github.com/israelftci/StudioMeter/releases/download/StudioMeter/StudioMeter-FREE-3.1.2-macOS.pkg"
  name "StudioMeter"
  desc "Free audio plugin"
  homepage "https://github.com/israelftci/StudioMeter"
  depends_on :macos
  pkg "StudioMeter-FREE-3.1.2-macOS.pkg"
end

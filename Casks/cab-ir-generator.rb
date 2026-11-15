cask "cab-ir-generator" do
  version "0.4.1"
  sha256 "bf316a06f487376a0a5891fd437734d053c3a94dc3a64fd2cc2c2cffb35ab0bd"
  url "https://github.com/darwinscat/cab-ir-generator/releases/download/v0.4.1/OrbitBassCabBuilder-0.4.1-macOS.pkg"
  name "cab-ir-generator"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/cab-ir-generator"
  depends_on :macos
  pkg "OrbitBassCabBuilder-0.4.1-macOS.pkg"
end

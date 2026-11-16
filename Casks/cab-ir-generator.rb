cask "cab-ir-generator" do
  version "0.5.0"
  sha256 "b08abbc526ec90584f8723c283f935ba63fd47898b33303c90f85d2b83ee66df"
  url "https://github.com/darwinscat/cab-ir-generator/releases/download/v0.5.0/OrbitBassCabBuilder-0.5.0-macOS.pkg"
  name "cab-ir-generator"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/cab-ir-generator"
  depends_on :macos
  pkg "OrbitBassCabBuilder-0.5.0-macOS.pkg"
end

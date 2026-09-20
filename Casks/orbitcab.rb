cask "orbitcab" do
  version "2.5.0"
  sha256 "e3dd88e2b8e5fb55ae8d715b4eac77d4ea59619af729dd2cd0512ac84c98158d"
  url "https://github.com/darwinscat/orbitcab/releases/download/v2.5.0/OrbitCab-2.5.0-macOS.pkg"
  name "orbitcab"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/orbitcab"
  depends_on :macos
  pkg "OrbitCab-2.5.0-macOS.pkg"
end

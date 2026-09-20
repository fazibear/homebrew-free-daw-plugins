cask "orbitcab" do
  version :latest
  sha256 :no_check
  url "https://github.com/darwinscat/orbitcab/releases/latest/download/OrbitCab-macOS.pkg"
  name "OrbitCab"
  desc "Impulse-response cabinet loader plugin"
  homepage "https://github.com/darwinscat/orbitcab"
  depends_on :macos
  pkg "OrbitCab-macOS.pkg"
end

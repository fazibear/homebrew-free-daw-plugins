cask "silemio-larsen" do
  version "2027.9"
  sha256 "a6241a11c1eb348ec9fceebc40bba56bc6684258a6375839bc1550542b5e5007"
  url "https://github.com/Mamat79/SiLeMIO-Larsen/releases/download/v2027.9/SiLeMIO-Larsen-2027.9-Mac.dmg"
  name "SiLeMIO-Larsen"
  desc "Free audio plugin"
  homepage "https://github.com/Mamat79/SiLeMIO-Larsen"
  depends_on :macos
  container type: :dmg
  app "Larsen Lupin Installer.app"
end

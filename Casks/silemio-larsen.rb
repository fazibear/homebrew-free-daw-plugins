cask "silemio-larsen" do
  version "2027.7"
  sha256 "8f616f114a199cf4631d25fa5750352dfe94b5e12ae139321951cbf2a8f37cb7"
  url "https://github.com/Mamat79/SiLeMIO-Larsen/releases/download/v2027.7/SiLeMIO-Larsen-2027.7-Mac.dmg"
  name "SiLeMIO-Larsen"
  desc "Free audio plugin"
  homepage "https://github.com/Mamat79/SiLeMIO-Larsen"
  depends_on :macos
  container type: :dmg
  app "Larsen Lupin Installer.app"
end

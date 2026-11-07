cask "silemio-larsen" do
  version "2027.8"
  sha256 "73df0a637719607bb1d6eb67c1fe4b3bd9f2e1e2ffc8f7e6128f96b673b3212b"
  url "https://github.com/Mamat79/SiLeMIO-Larsen/releases/download/v2027.8/SiLeMIO-Larsen-2027.8-Mac.dmg"
  name "SiLeMIO-Larsen"
  desc "Free audio plugin"
  homepage "https://github.com/Mamat79/SiLeMIO-Larsen"
  depends_on :macos
  container type: :dmg
  app "Larsen Lupin Installer.app"
end

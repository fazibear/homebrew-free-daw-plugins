cask "flarex" do
  version "1.1.4"
  sha256 "829cebfbf7a74ea556f181103901e1d9e8771a66dcef1e545ca053ac0bfa91f8"
  url "https://github.com/remiblaze/Flarex/releases/download/v1.1.4/Flarex_Installer.pkg"
  name "Flarex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Flarex"
  depends_on :macos
  pkg "Flarex_Installer.pkg"
end

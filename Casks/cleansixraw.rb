cask "cleansixraw" do
  version "1.0.1"
  sha256 "df6b51c520bac158598e1cd2c6248291cd0d7d63361b2f733a291e87a38966f8"
  url "https://github.com/remiblaze/CleansixRaw/releases/download/v1.0.1/CleansixRaw_Installer.pkg"
  name "CleansixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/CleansixRaw"
  depends_on :macos
  pkg "CleansixRaw_Installer.pkg"
end

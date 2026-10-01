cask "flarexraw" do
  version "1.0.1"
  sha256 "c61c19657136aaea36703f25aded7438b007a3708a16313541f0e62379d91a76"
  url "https://github.com/remiblaze/FlarexRaw/releases/download/v1.0.1/FlarexRaw_Installer.pkg"
  name "FlarexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/FlarexRaw"
  depends_on :macos
  pkg "FlarexRaw_Installer.pkg"
end

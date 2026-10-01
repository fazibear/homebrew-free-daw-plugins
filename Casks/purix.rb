cask "purix" do
  version "1.1.0"
  sha256 "fa79c4ae0fbff24fce54ad899248aeaf36af0a4b202694444f165b2775066ad7"
  url "https://github.com/remiblaze/Purix/releases/download/v1.1.0/Purix_Installer.pkg"
  name "Purix"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Purix"
  depends_on :macos
  pkg "Purix_Installer.pkg"
end

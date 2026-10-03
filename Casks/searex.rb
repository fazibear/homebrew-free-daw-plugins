cask "searex" do
  version "1.1.0"
  sha256 "71cce1a914c7cccb044cbd135d53c75bf89a2dfaa1efe6491963200bf0a2ff3b"
  url "https://github.com/remiblaze/Searex/releases/download/v1.1.0/Searex_Installer.pkg"
  name "Searex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Searex"
  depends_on :macos
  pkg "Searex_Installer.pkg"
end

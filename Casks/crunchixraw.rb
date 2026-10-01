cask "crunchixraw" do
  version "1.0.1"
  sha256 "30d972f119b03763f15fa2e547242f89c6dbdb36d3428ab96dc9d74846087076"
  url "https://github.com/remiblaze/CrunchixRaw/releases/download/v1.0.1/CrunchixRaw_Installer.pkg"
  name "CrunchixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/CrunchixRaw"
  depends_on :macos
  pkg "CrunchixRaw_Installer.pkg"
end

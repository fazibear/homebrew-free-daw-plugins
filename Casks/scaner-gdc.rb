cask "scaner-gdc" do
  version "0.6.0"
  sha256 "61acbc4a4b6458e2b758214a00a6685b1e6bfa348d0b802cb01addf58f0537ce"
  url "https://github.com/gordasgdc/scaner-gdc/releases/download/v0.6.0/ScanerGDC-macOS-0.6.0.dmg"
  name "scaner-gdc"
  desc "Free audio plugin"
  homepage "https://github.com/gordasgdc/scaner-gdc"
  depends_on :macos
  container type: :dmg
  app "Scaner GDC.app"
end

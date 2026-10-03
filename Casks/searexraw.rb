cask "searexraw" do
  version "1.0.1"
  sha256 "4c1d619508c48b7a75cc556db354ef160e57d5ca6bfc784c1483ed75fd9c42d1"
  url "https://github.com/remiblaze/SearexRaw/releases/download/v1.0.1/SearexRaw_Installer.pkg"
  name "SearexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/SearexRaw"
  depends_on :macos
  pkg "SearexRaw_Installer.pkg"
end

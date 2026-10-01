cask "reactixraw" do
  version "1.0.1"
  sha256 "93af8123560987e13511e3c1310642b0e2beec17bf454cc9e85c9c8f5c31ea5d"
  url "https://github.com/remiblaze/ReactixRaw/releases/download/v1.0.1/ReactixRaw_Installer.pkg"
  name "ReactixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ReactixRaw"
  depends_on :macos
  pkg "ReactixRaw_Installer.pkg"
end

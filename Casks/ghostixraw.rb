cask "ghostixraw" do
  version "1.0.1"
  sha256 "3719e8517fcd1e0b87071030638a278b93a60e0752802cda1e145cb8460cf4ff"
  url "https://github.com/remiblaze/GhostixRaw/releases/download/v1.0.1/GhostixRaw_Installer.pkg"
  name "GhostixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/GhostixRaw"
  depends_on :macos
  pkg "GhostixRaw_Installer.pkg"
end

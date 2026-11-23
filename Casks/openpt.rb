cask "openpt" do
  version "0.8.2"
  sha256 "aeeeec57886bd1ecdab2023878bc067a77057875c826710a9e577dcbdd74a283"
  url "https://github.com/aurelienjsureau/openpt/releases/download/v0.8.2/OpenPT-0.8.2-macos-arm64.dmg"
  name "openpt"
  desc "Free audio plugin"
  homepage "https://github.com/aurelienjsureau/openpt"
  depends_on :macos
  container type: :dmg
  app "OpenPT.app"
end

cask "openpt" do
  version "0.8.0"
  sha256 "3bf5e1ece3e5e9f002a0a3ca514031e9a68e5ed9b56c9e2fe6cf1f6d131cbc42"
  url "https://github.com/aurelienjsureau/openpt/releases/download/v0.8.0/OpenPT-0.8.0-macos-arm64.dmg"
  name "openpt"
  desc "Free audio plugin"
  homepage "https://github.com/aurelienjsureau/openpt"
  depends_on :macos
  container type: :dmg
  app "OpenPT.app"
end

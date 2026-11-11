cask "openpt" do
  version "0.8.1"
  sha256 "5adcd03e3a851178e300d98f5e2bf5ed71cfd8db174aae5757322010b7df8bb1"
  url "https://github.com/aurelienjsureau/openpt/releases/download/v0.8.1/OpenPT-0.8.1-macos-arm64.dmg"
  name "openpt"
  desc "Free audio plugin"
  homepage "https://github.com/aurelienjsureau/openpt"
  depends_on :macos
  container type: :dmg
  app "OpenPT.app"
end

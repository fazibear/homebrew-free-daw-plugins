cask "soranaflow" do
  version "1.11.4"
  sha256 "78524b2a21c202c4d8f3464c0679be19a6225e4e146bf73e36b1774e6bbdaaec"
  url "https://github.com/ruki7423/Soranaflow/releases/download/v1.11.4/SoranaFlow-1.11.4.dmg"
  name "Soranaflow"
  desc "Free audio plugin"
  homepage "https://github.com/ruki7423/Soranaflow"
  depends_on :macos
  container type: :dmg
  app "SoranaFlow.app"
end

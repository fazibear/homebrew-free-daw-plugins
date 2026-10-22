cask "rigbench" do
  version "0.3.0"
  sha256 "82ab0b9abf171ca7ad9f4c3020feb54fdd5c9223e788345499915587057ec962"
  url "https://github.com/jcjmcclean/rigbench/releases/download/v0.3.0/Rigbench-0.3.0.dmg"
  name "rigbench"
  desc "Free audio plugin"
  homepage "https://github.com/jcjmcclean/rigbench"
  depends_on :macos
  container type: :dmg
  app "Rigbench.app"
end

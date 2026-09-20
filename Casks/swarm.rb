cask "swarm" do
  version :latest
  sha256 :no_check
  url "https://xeni-audio.com/downloads/Swarm-macOS.pkg"
  name "Swarm"
  desc "Audio plugin by Xeni Audio"
  homepage "https://xeni-audio.com/swarm.html"
  depends_on :macos
  pkg "Swarm-macOS.pkg"
end

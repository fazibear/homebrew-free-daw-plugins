cask "groovetransfer" do
  version "1.1.2"
  sha256 :no_check
  url "https://xeni-audio.com/downloads/GrooveTransfer-#{version}-macOS.dmg"
  name "GrooveTransfer"
  desc "Cross-track groove transfer audio plugin"
  homepage "https://xeni-audio.com/groovetransfer.html"
  depends_on :macos
  container type: :dmg
  pkg "*.pkg"
end

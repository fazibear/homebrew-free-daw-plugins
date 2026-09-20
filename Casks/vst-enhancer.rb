cask "vst-enhancer" do
  version "0.5.26"
  sha256 "c8f566a461985adbd71198d7b0c9707b3c9f65cbaf47627146f778776d0b9fff"
  url "https://github.com/masarray/vst-enhancer/releases/download/v0.5.26/ArSonKuPik-v0.5.26-macOS-Universal.dmg"
  name "Vst Enhancer"
  desc "Free audio plugin"
  homepage "https://github.com/masarray/vst-enhancer"
  depends_on :macos
  dmg "ArSonKuPik-v0.5.26-macOS-Universal.dmg"
end

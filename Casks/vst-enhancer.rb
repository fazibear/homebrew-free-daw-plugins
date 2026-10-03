cask "vst-enhancer" do
  version "0.5.26"
  sha256 "3ee5d513b9bcb28c7ed6591b2b5d00f60e00696da072f24f857e0a4770f1d024"
  url "https://github.com/masarray/vst-enhancer/releases/download/v0.5.26/ArSonKuPik-v0.5.26-macOS-Universal-Standalone.zip"
  name "vst-enhancer"
  desc "Free audio plugin"
  homepage "https://github.com/masarray/vst-enhancer"
  depends_on :macos
  app "ArSonKuPik-v0.5.26-macOS-Universal-Standalone/ArSonKuPik.app"
end

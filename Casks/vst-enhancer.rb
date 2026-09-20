cask "vst-enhancer" do
  version "0.5.26"
  sha256 :no_check
  url "https://github.com/masarray/vst-enhancer/releases/download/v#{version}/ArSonKuPik-#{version}-macOS.dmg"
  name "ArSonKuPik VST Enhancer"
  desc "Audio enhancer VST3 plugin"
  homepage "https://github.com/masarray/vst-enhancer"
  depends_on :macos
  dmg "ArSonKuPik-#{version}-macOS.dmg"
end

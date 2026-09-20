cask "tone3000" do
  version :latest
  sha256 :no_check
  url "https://github.com/tone-3000/tone3000-plugin/releases/latest/download/TONE3000-macOS.pkg"
  name "TONE3000"
  desc "Neural Amp Modeler and impulse response plugin"
  homepage "https://github.com/tone-3000/tone3000-plugin"
  depends_on :macos
  pkg "TONE3000-macOS.pkg"
end

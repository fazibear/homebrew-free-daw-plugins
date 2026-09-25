cask "odin-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Odin2MacInstaller.pkg"
  name "Odin 2"
  desc "Odin 2 is a 12-voice polyphonic semi-modular synthesizer."
  homepage "https://plugins4free.com/plugin/3120"
  depends_on :macos
  pkg "Odin2MacInstaller.pkg"
end

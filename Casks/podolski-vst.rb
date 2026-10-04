cask "podolski-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Podolski_123_12092_Mac.zip"
  name "Podolski"
  desc "Podolski is a straightforward virtual analogue synthesizer featuring a flexible arpeggiator / step sequencer plus delay and chorus effects."
  homepage "https://plugins4free.com/plugin/1367"
  depends_on :macos
  pkg "Podolski_12092_Mac/Podolski 1.2.3 Installer.pkg"
end

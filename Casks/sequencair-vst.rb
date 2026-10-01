cask "sequencair-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/sequencair_1_1_9_mac.pkg"
  name "SequencAir"
  desc "SequencAir is a step sequencer/synthesizer ."
  homepage "https://plugins4free.com/plugin/3006"
  depends_on :macos
  pkg "sequencair_1_1_9_mac.pkg"
end

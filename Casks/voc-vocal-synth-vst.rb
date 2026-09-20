cask "voc-vocal-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Voc_MacVST.zip"
  name "Voc Vocal Synth"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2834"
  depends_on :macos
  artifact "Voc_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

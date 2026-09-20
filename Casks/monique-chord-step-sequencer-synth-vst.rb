cask "monique-chord-step-sequencer-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Monique-Mac.zip"
  name "Monique Chord / step sequencer synth"
  desc "Monique Chord / step sequencer synth"
  homepage "https://plugins4free.com/plugin/3211"
  depends_on :macos
  artifact "Monique-Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

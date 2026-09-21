cask "simple-microtonal-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Simple_Microtonal_Synth_Mac.zip"
  name "Simple Microtonal Synth"
  desc "Simple Microtonal Synth is a polyphonic microtonal synthesizer ."
  homepage "https://plugins4free.com/plugin/2954"
  depends_on :macos
  artifact "Simple_Microtonal_Synth_Mac.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

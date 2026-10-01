cask "my-first-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MyFirstSynth_MacVST.zip"
  name "My First Synth"
  desc "My First Synth is a simple monophonic synthesizer ."
  homepage "https://plugins4free.com/plugin/2431"
  depends_on :macos
  artifact "My First Synth.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/My First Synth.vst"
  artifact "My First Synth_x64.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/My First Synth_x64.vst"
end

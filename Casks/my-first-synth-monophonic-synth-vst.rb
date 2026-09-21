cask "my-first-synth-monophonic-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MyFirstSynth_MacVST.zip"
  name "My First Synth Monophonic synth"
  desc "My First Synth Monophonic synth"
  homepage "https://plugins4free.com/plugin/2431"
  depends_on :macos
  artifact "MyFirstSynth_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

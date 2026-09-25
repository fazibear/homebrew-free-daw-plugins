cask "my-first-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MyFirstSynth_MacAU.zip"
  name "My First Synth"
  desc "My First Synth is a simple monophonic synthesizer ."
  homepage "https://plugins4free.com/plugin/2431"
  depends_on :macos
  artifact "My First Synth.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

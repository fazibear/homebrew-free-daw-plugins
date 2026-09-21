cask "my-first-synth-monophonic-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MyFirstSynth_MacAU.zip"
  name "My First Synth Monophonic synth"
  desc "My First Synth Monophonic synth"
  homepage "https://plugins4free.com/plugin/2431"
  depends_on :macos
  artifact "MyFirstSynth_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

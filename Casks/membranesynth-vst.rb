cask "membranesynth-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MembraneSynth.zip"
  name "MembraneSynth"
  desc "MembraneSynth is a synthesizer that resembles sound of percussions with membrane, like bass drum or tom tom."
  homepage "https://plugins4free.com/plugin/3891"
  depends_on :macos
  artifact "MembraneSynth.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/MembraneSynth.vst3"
end

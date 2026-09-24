cask "nsynth1-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nSynth1.vst.zip"
  name "nSynth1"
  desc "nSynth1 is a 4 oscillator synth with drawable waveforms and a pattern generator."
  homepage "https://plugins4free.com/plugin/2211"
  depends_on :macos
  artifact "nSynth1.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "nsynth1-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nSynth1.vst.zip"
  name "nSynth1"
  desc "nSynth1 is a 4 oscillator synth with drawable waveforms and a pattern generator."
  homepage "https://plugins4free.com/plugin/2211"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "nSynth1.vst", "{{user}}/Library/Audio/Plug-Ins/VST/nSynth1.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/__MACOSX/nSynth1.vst"
    copy "__MACOSX/nSynth1.vst/._Icon", "{{user}}/Library/Audio/Plug-Ins/VST/__MACOSX/nSynth1.vst/._Icon"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/__MACOSX"
    copy "__MACOSX/._nSynth1.vst", "{{user}}/Library/Audio/Plug-Ins/VST/__MACOSX/._nSynth1.vst"
  end
end

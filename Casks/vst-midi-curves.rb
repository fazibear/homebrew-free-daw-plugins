cask "vst-midi-curves" do
  version "0.2.0"
  sha256 "5677031c044b8449769145037b0c2d3e33b9480740d426d48859f7b50c33fee7"
  url "https://github.com/ScherbakovAl/vst_midi_curves/releases/download/v0.2.0/MidiCurves-v0.2.0-macos-universal.zip"
  name "vst_midi_curves"
  desc "Free audio plugin"
  homepage "https://github.com/ScherbakovAl/vst_midi_curves"
  depends_on :macos
  artifact "midi_curves_v0.2.0/MidiCurves.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/MidiCurves.clap"
  artifact "midi_curves_v0.2.0/MidiCurves.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/MidiCurves.vst3"
end

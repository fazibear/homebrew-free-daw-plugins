cask "gesture-synth" do
  version :latest
  sha256 :no_check
  url "https://github.com/TTeuber/GestureSynth/releases/latest/download/GestureSynth-macOS.zip"
  name "Gesture Synth"
  desc "Gesture-driven polyphonic synthesizer plugin"
  homepage "https://github.com/TTeuber/GestureSynth"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

cask "firefly-synth-2" do
  version :latest
  sha256 :no_check
  url "https://github.com/sjoerdvankreel/firefly-synth-2/releases/latest/download/FireflySynth2-mac-clap-Release.zip"
  name "Firefly Synth 2"
  desc "Polyphonic synthesizer plugin"
  homepage "https://github.com/sjoerdvankreel/firefly-synth-2"
  depends_on :macos
  artifact "FireflySynth2.clap", target: "/Library/Audio/Plug-Ins/CLAP"
end

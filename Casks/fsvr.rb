cask "fsvr" do
  version "latest"
  sha256 :no_check
  url "https://github.com/musicastudio/FSVR/releases/download/v0.5.1/FSVR-MacOS-Installer.zip"
  name "FSVR"
  desc "FSVR, Formant Synthesizer Virtual Rack, is a software reconstruction of the Yamaha FS1R as a plugin and a console synth: its firmware logic rewritten in C++ from the decompiled ROM, four parts, 32 channels, the filter, both LFOs, pan, the three effect blocks, performances and Fseq playback. CLAP, VST3, VST2 and standalone on Windows, macOS and Linux, an AU on macOS and a 32-bit VST2 with a DXi on Windows, with an editor for every parameter the unit has, a bank manager for your own .syx libraries, a morph square and Import Audio for Fseqs. Download the latest build: https://github.com/musicastudio/FSVR/releases/latest (no installer, no dependencies)."
  homepage "https://github.com/musicastudio/FSVR/releases/latest"
  depends_on :macos
  app "FSVR-MacOS-Installer.app"
end

cask "spectrum-analyzer" do
  version :latest
  sha256 :no_check
  url "https://github.com/dusk-audio/dusk-audio-plugins/releases/latest/download/dusk-audio-plugins-macos.zip"
  name "Spectrum Analyzer"
  desc "Audio spectrum analysis plugin"
  homepage "https://dusk-audio.github.io/"
  depends_on :macos
  artifact "VST3/Spectrum Analyzer.vst3", target: "/Library/Audio/Plug-Ins/VST3"
end

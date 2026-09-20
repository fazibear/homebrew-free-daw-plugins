cask "4k-eq-2" do
  version :latest
  sha256 :no_check
  url "https://github.com/dusk-audio/dusk-audio-plugins/releases/latest/download/dusk-audio-plugins-macos.zip"
  name "4K EQ 2"
  desc "Console-style equalizer audio plugin"
  homepage "https://dusk-audio.github.io/"
  depends_on :macos
  artifact "VST3/4K EQ 2.vst3", target: "/Library/Audio/Plug-Ins/VST3"
end

cask "tape-echo-2" do
  version :latest
  sha256 :no_check
  url "https://github.com/dusk-audio/dusk-audio-plugins/releases/latest/download/dusk-audio-plugins-macos.zip"
  name "Tape Echo 2"
  desc "Tape echo audio plugin"
  homepage "https://dusk-audio.github.io/"
  depends_on :macos
  artifact "VST3/Tape Echo 2.vst3", target: "/Library/Audio/Plug-Ins/VST3"
end

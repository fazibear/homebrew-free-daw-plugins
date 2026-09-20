cask "jc-303" do
  version :latest
  sha256 :no_check
  url "https://github.com/midilab/jc303/releases/latest/download/JC-303-macOS.zip"
  name "JC-303"
  desc "303-style synthesizer plugin"
  homepage "https://github.com/midilab/jc303"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end

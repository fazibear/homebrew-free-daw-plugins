cask "alpharail" do
  version :latest
  sha256 :no_check
  url "https://pointlessaudio.studio/plugins/alpharail/downloads/AlphaRail-macOS.zip"
  name "AlphaRail"
  desc "Audio plugin by Pointless Audio"
  homepage "https://pointlessaudio.studio/plugins/alpharail/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end

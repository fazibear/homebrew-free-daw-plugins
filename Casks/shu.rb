cask "shu" do
  version :latest
  sha256 :no_check
  url "https://mikey.audio/downloads/Shu-macOS.zip"
  name "Shu"
  desc "Free reverb audio plugin"
  homepage "https://mikey.audio/shu"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

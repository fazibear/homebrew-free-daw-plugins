cask "jamwide" do
  version :latest
  sha256 :no_check
  url "https://github.com/mkschulze/JamWide/releases/latest/download/JamWide-macOS.zip"
  name "JamWide"
  desc "Stereo widening audio plugin"
  homepage "https://github.com/mkschulze/JamWide"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end

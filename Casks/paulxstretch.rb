cask "paulxstretch" do
  version :latest
  sha256 :no_check
  url "https://sonosaurus.com/paulxstretch/downloads/PaulXStretch-macOS.zip"
  name "PaulXStretch"
  desc "Extreme time-stretching audio plugin"
  homepage "https://sonosaurus.com/paulxstretch/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

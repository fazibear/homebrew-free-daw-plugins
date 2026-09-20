cask "peakeater" do
  version "0.8.2"
  sha256 :no_check
  url "https://github.com/vvvar/PeakEater/releases/download/v#{version}/PeakEater-macOS.zip"
  name "PeakEater"
  desc "Free wave-shaping audio plugin"
  homepage "https://github.com/vvvar/PeakEater"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

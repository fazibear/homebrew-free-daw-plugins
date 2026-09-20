cask "gjalla" do
  version :latest
  sha256 :no_check
  url "https://github.com/andreademurtas/gjalla/releases/latest/download/Gjalla-macOS.zip"
  name "Gjalla"
  desc "Audio plugin by Sognevo"
  homepage "https://sognevo.com/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

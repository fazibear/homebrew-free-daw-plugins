cask "rustortion" do
  version :latest
  sha256 :no_check
  url "https://github.com/OpenSauce/rustortion/releases/latest/download/rustortion-macos.zip"
  name "Rustortion"
  desc "Audio distortion plugin"
  homepage "https://github.com/OpenSauce/rustortion"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end

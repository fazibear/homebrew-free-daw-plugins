cask "galdr" do
  version :latest
  sha256 :no_check
  url "https://github.com/andreademurtas/galdr/releases/latest/download/Galdr-macOS.zip"
  name "Galdr"
  desc "Dark synthesizer audio plugin"
  homepage "https://sognevo.com/galdr/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

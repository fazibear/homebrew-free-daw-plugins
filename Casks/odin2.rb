cask "odin2" do
  version "2.4.1"
  sha256 :no_check
  url "https://github.com/TheWaveWarden/odin2/releases/download/v#{version}/Odin2-macOS.zip"
  name "Odin 2"
  desc "Free synthesizer plugin"
  homepage "https://thewavewarden.com/odin2"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "Components", target: "/Library/Audio/Plug-Ins/Components"
end

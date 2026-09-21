cask "gabcis-morphicphaser" do
  version "1.0.0"
  sha256 "8b7223bc8933c6e8954b57d9c014544ed3c423973d89dbc6783bead4f5201be2"
  url "https://github.com/rcptr2/gabcis-morphicphaser/releases/download/v1.0.0/MorphicPhaser-v1.0.0-macOS-Intel-VST3.zip"
  name "gabcis-morphicphaser"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-morphicphaser"
  depends_on :macos
  artifact "MorphicPhaser-v1.0.0-macOS-Intel-VST3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

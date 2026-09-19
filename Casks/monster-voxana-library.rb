cask "monster-voxana-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1bMQFaaQ-XbhPmD3hS9DQIxo2I269VVgM&export=download&confirm=t"
  name "MONSTER Voxana v1 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Voxana v1 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Voxana v1 Library"
end

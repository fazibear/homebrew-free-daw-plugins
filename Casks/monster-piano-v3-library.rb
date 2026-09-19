cask "monster-piano-v3-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1pEqIRSr5ERprGcsuFeGE5wHRSqrtvwhZ&export=download&confirm=t"
  name "MONSTER Piano v3 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Piano v3 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Piano v3 Library"
end

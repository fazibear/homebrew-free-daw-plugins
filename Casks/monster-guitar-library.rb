cask "monster-guitar-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1PF6Aw-iBukPSFkdlfa2h0pUoH2C6_W-G&export=download&confirm=t"
  name "MONSTER Guitar v2 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Guitar v2 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Guitar v2 Library"
end

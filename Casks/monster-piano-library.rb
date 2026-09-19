cask "monster-piano-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1fbTi5BEFic_tspI-QGySYOOu5mSULh6b&export=download&confirm=t"
  name "GOLDEN Piano v2 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "GOLDEN Piano v2 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/GOLDEN Piano v2 Library"
end

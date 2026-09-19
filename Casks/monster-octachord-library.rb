cask "monster-octachord-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1gRbNUmgS3ewiz06_u9ehosx9FckSf1Ka&export=download&confirm=t"
  name "MONSTER OctaChord v1 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER OctaChord v1 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER OctaChord v1 Library"
end

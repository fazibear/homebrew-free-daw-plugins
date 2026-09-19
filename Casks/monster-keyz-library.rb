cask "monster-keyz-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1I9L9rniR6x4-rA-RX5VawmPzJhP9o3cG&export=download&confirm=t"
  name "MONSTER Keyz v2 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Keyz v2 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Keyz v2 Library"
end

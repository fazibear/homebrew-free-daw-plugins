cask "monster-ethnica-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1Jt8ACKnC3bDIqgW7aLZ0yJG8he7Ct5Yt&export=download&confirm=t"
  name "MONSTER Ethnica v2 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Ethnica v2 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Ethnica v2 Library"
end

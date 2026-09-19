cask "monster-soundscapes-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=15xL-ThITbqt1Da_TNeydzNBkh2B2ExmD&export=download&confirm=t"
  name "MONSTER Soundscapes v1 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Soundscapes v1 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Soundscapes v1 Library"
end

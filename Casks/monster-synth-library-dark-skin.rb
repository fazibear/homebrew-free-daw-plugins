cask "monster-synth-library-dark-skin" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1zhDaWHQak8TJKlKMixuAKZMEt4bTEq4d&export=download&confirm=t"
  name "MONSTER Synth v2 Library (DARK SKIN)"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Synth v2 Library (DARK SKIN)",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Synth v2 Library (DARK SKIN)"
end

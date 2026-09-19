cask "monster-bass-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1VkQ9Hanr7Uj_kXgctnvu-lmmc5TI3Fax&export=download&confirm=t"
  name "MONSTER Bass v2 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Bass v2 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Bass v2 Library"
end

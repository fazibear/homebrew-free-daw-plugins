cask "monster-toys-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1Z6nmPwFuS3vflQUrIfpEdrpuOMgcC4RK&export=download&confirm=t"
  name "MONSTER Toys v1 Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "MONSTER Toys v1 Library",
           target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/MONSTER Toys v1 Library"
end

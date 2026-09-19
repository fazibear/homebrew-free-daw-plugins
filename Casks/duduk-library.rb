cask "duduk-library" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1u8aaqnGuJEYMI996br_YbpN3pkxHCW-B&export=download&confirm=t"
  name "Duduk Library"
  desc "Sample library content for Monster Plugins"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  artifact "Duduk", target: "#{Dir.home}/Library/Audio/Presets/Monster Plugins/Duduk"
end

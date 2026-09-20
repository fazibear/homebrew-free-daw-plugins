cask "doomvst" do
  version "0.0.1"
  sha256 :no_check
  url "https://github.com/directmusic/DoomVST/releases/download/0.0.1/Doom-macOS-AU.zip"
  name "DoomVST"
  desc "Free audio plugin"
  homepage "https://github.com/directmusic/DoomVST"
  depends_on :macos
  artifact "Doom-macOS-AU", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

cask "doomvst" do
  version "0.0.1"
  sha256 "ca407b7783d22f730a417c576c30bb7c665a7b1311440aaf7f409806622e501f"
  url "https://github.com/directmusic/DoomVST/releases/download/0.0.1/Doom-macOS-AU.zip"
  name "DoomVST"
  desc "Free audio plugin"
  homepage "https://github.com/directmusic/DoomVST"
  depends_on :macos
  artifact "Doom.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Doom.component"
end

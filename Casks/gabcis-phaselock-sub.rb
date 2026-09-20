cask "gabcis-phaselock-sub" do
  version "1.0.0"
  sha256 "5c5c055c09b565bb60f6539941779afc6a4810dcb1bd40e67b6c73bead118a41"
  url "https://github.com/rcptr2/gabcis-phaselock-sub/releases/download/v1.0.0/PhaseLockSub-v1.0.0-macOS-Intel-VST3.zip"
  name "gabcis-phaselock-sub"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-phaselock-sub"
  depends_on :macos
  artifact "PhaseLockSub-v1.0.0-macOS-Intel-VST3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

cask "resonant-four" do
  version "0.1.0"
  sha256 "9acd1e6e1209edc5e9580a0138ee58041173643e189534be077d3aa6f374264c"
  url "https://github.com/nickdc8/resonant-four/releases/download/v0.1.0/Resonant-Four-0.1.0-macOS-universal.zip"
  name "resonant-four"
  desc "Free audio plugin"
  homepage "https://github.com/nickdc8/resonant-four"
  depends_on :macos
  artifact "Resonant Four/Resonant Four.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Resonant Four.vst3"
  app "Resonant Four/Resonant Four.app", target: "#{Dir.home}/Applications/Resonant Four.app"
end

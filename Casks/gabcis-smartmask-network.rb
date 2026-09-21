cask "gabcis-smartmask-network" do
  version "0.13.0"
  sha256 "4d98d750a1bc5703a54337c401b8d479c1be3901c59c430ed5eb2960019e00ba"
  url "https://github.com/rcptr2/gabcis-smartmask-network/releases/download/v0.13.0/SmartMaskNetwork-v0.13.0-macOS-Intel-VST3.zip"
  name "gabcis-smartmask-network"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-smartmask-network"
  depends_on :macos
  artifact "SmartMaskNetwork-v0.13.0-macOS-Intel-VST3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

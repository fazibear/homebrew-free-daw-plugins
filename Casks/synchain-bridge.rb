cask "synchain-bridge" do
  version "1.6.0"
  sha256 "d2d8978fab9b85b7aa4b878b4260df7a50b861638af60f48cbabd954b1c2cd9b"
  url "https://github.com/synchain-oss/synchain-bridge/releases/download/v1.6.0/SynchainBridge-VST3-AU-v1.6.0-macos-arm64.zip"
  name "synchain-bridge"
  desc "Free audio plugin"
  homepage "https://github.com/synchain-oss/synchain-bridge"
  depends_on :macos
  artifact "Synchain Bridge.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Synchain Bridge.component"
  artifact "Synchain Bridge.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Synchain Bridge.vst3"
end

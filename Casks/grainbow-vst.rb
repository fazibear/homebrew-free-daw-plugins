cask "grainbow-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/gRainbow-macOS.dmg"
  name "gRainbow"
  desc "gRainbow is a synthesizer that uses pitch detection to choose candidates for granular synthesis or sampling ."
  homepage "https://plugins4free.com/plugin/3941"
  depends_on :macos
  container type: :dmg
  artifact "gRainbow.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/gRainbow.component"
  artifact "gRainbow.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/gRainbow.vst3"
  app "gRainbow.app", target: "#{Dir.home}/Applications/gRainbow.app"
end

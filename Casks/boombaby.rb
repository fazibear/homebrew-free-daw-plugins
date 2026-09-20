cask "boombaby" do
  version "0.9.0"
  sha256 "8626627f47bb8124eaa312acc8fa1f5ada519b83545275829ee3e4a9f954dcab"
  url "https://github.com/auditive-tokyo/BoomBaby/releases/download/v0.9.0/BoomBaby-0.9.0-AU-macOS.zip"
  name "BoomBaby"
  desc "Free audio plugin"
  homepage "https://github.com/auditive-tokyo/BoomBaby"
  depends_on :macos
  artifact "BoomBaby-0.9.0-AU-macOS", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

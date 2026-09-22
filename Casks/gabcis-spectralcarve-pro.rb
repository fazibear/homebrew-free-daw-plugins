cask "gabcis-spectralcarve-pro" do
  version "1.0.0"
  sha256 "41a9f59c1531a82b6c67f716289fe37453431a23b066406e7ca094036f3205b1"
  url "https://github.com/rcptr2/gabcis-spectralcarve-pro/releases/download/v1.0.0/SpectralCarvePro-v1.0.0-macOS-Intel-VST3.zip"
  name "gabcis-spectralcarve-pro"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-spectralcarve-pro"
  depends_on :macos
  artifact "SpectralCarve Pro.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

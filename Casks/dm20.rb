cask "dm20" do
  version "0.4.4"
  sha256 "8ad0b732b06407907095ad19ca3ec04b0d3c2ea6b2bf74f3949e9aaf2df5325c"
  url "https://github.com/jbubio/dm20/releases/download/v0.4.4/DM20-0.4.4-macOS-arm64.zip"
  name "dm20"
  desc "Free audio plugin"
  homepage "https://github.com/jbubio/dm20"
  depends_on :macos
  artifact "DM20/DM20.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DM20.component"
  artifact "DM20/DM20.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/DM20.vst3"
end

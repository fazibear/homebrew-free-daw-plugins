cask "furnace-chiptune" do
  version "0.1.1"
  sha256 "dc49236f1d650ff687f98cbf332ec9a2bc3fd196163bdf6695d8f44acd00b49d"
  url "https://github.com/dthinkr/furnace-chiptune-plugin/releases/download/v0.1.1/FurnacePlugin-v0.1.1-macOS-AU.zip"
  name "furnace-chiptune"
  desc "Free audio plugin"
  homepage "https://github.com/dthinkr/furnace-chiptune-plugin"
  depends_on :macos
  artifact "FurnacePlugin.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

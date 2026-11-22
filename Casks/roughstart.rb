cask "roughstart" do
  version "0.11.4"
  sha256 "4a48708d262088d88f617c2ace72b7f22c87bb1315482ad7a85b3a43d411424c"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.11.4/RoughStart-0.11.4-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.11.4-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.11.4-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

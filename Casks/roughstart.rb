cask "roughstart" do
  version "0.11.1"
  sha256 "74633e7563475c9c0f531e311544cb1701d54a3c83a5e9e1cd8b957b2d4b2b46"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.11.1/RoughStart-0.11.1-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.11.1-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.11.1-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

cask "roughstart" do
  version "0.11.3"
  sha256 "aab35b2044e5a52b52912b87b0dd5ad2ce96724f6529c02b1e9b37d068eb6e6e"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.11.3/RoughStart-0.11.3-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.11.3-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.11.3-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

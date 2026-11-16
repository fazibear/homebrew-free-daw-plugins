cask "roughstart" do
  version "0.10.0"
  sha256 "baff718e3dbd5dd73739bf493af24c4b3375c73e2c1f4d73a65eeb76566eb3f8"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.10.0/RoughStart-0.10.0-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.10.0-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.10.0-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

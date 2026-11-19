cask "roughstart" do
  version "0.11.2"
  sha256 "52e9a228e42ff508194811e5acb09c706d176cca96a46488119fe86aade87741"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.11.2/RoughStart-0.11.2-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.11.2-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.11.2-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

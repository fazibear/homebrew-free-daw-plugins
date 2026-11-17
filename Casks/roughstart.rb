cask "roughstart" do
  version "0.11.0"
  sha256 "669ebf04f20ef35146d9de301ebae9589e484aebb827046ffa20a1b4b6de09a4"
  url "https://github.com/tonvanderkolk/roughstart/releases/download/v0.11.0/RoughStart-0.11.0-macos.zip"
  name "roughstart"
  desc "Free audio plugin"
  homepage "https://github.com/tonvanderkolk/roughstart"
  depends_on :macos
  artifact "RoughStart-0.11.0-macos/RoughStart.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RoughStart.component"
  artifact "RoughStart-0.11.0-macos/RoughStart.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/RoughStart.vst3"
end

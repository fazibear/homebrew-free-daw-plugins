cask "topend" do
  version "1.0.0"
  sha256 "8b8451f8adb81a633f00305d662239eac2ce8e3a33a339f7b3203cbabf67ca4e"
  url "https://github.com/BTFLV/TopEnd/releases/download/v1.0.0/TopEnd-1.0.0-macOS-arm64.dmg"
  name "TopEnd"
  desc "Free audio plugin"
  homepage "https://github.com/BTFLV/TopEnd"
  depends_on :macos
  container type: :dmg
  artifact "TopEnd.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/TopEnd.clap"
  artifact "TopEnd.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/TopEnd.component"
  artifact "TopEnd.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/TopEnd.vst3"
end

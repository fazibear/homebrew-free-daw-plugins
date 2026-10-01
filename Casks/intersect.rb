cask "intersect" do
  version "0.16.0"
  sha256 "a34db140bfee11cb4eb2fbd28c9de92fcf902c4c3afa60ebd5c417543f6c51d2"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.16.0/INTERSECT-v0.16.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

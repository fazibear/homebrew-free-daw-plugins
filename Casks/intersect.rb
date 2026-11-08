cask "intersect" do
  version "0.19.0"
  sha256 "7a8c3901d5ca4a6529be665c007137502288aee58b26d374f0113473ae7260d2"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.19.0/INTERSECT-v0.19.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

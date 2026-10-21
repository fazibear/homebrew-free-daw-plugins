cask "intersect" do
  version "0.17.1"
  sha256 "d5266d2f7bb2b7ae7f270194719ac451c1a9cbca932a008e4f957bdf76307128"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.17.1/INTERSECT-v0.17.1-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

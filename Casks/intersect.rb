cask "intersect" do
  version "0.19.1"
  sha256 "77fa0a3c34c642b1824ebe7715c721e37bb811e01b4cefe1df7657c1a1074497"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.19.1/INTERSECT-v0.19.1-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

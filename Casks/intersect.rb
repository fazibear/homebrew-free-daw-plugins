cask "intersect" do
  version "0.18.2"
  sha256 "f903e906702f07abab240edce8a3c2e3503f81d1d07bc76b7b4f4a20d0e7f343"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.18.2/INTERSECT-v0.18.2-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

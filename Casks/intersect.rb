cask "intersect" do
  version "0.18.0"
  sha256 "f9108f0427ec52bce68a4f5c76084928bcf07c2c76d9e62577fbe8d54c18e587"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.18.0/INTERSECT-v0.18.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

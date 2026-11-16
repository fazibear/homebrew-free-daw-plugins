cask "intersect" do
  version "0.20.0"
  sha256 "c430072c25ad825f7c6725d161a21340e7a31fee6af5634dc19176e3cb9a9606"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.20.0/INTERSECT-v0.20.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

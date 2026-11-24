cask "intersect" do
  version "0.20.1"
  sha256 "fcb7cec6746e30ad34ab8d8693abf22406d00b3ff5dbdcc2b21b123af14f7973"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.20.1/INTERSECT-v0.20.1-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

cask "intersect" do
  version "0.17.2"
  sha256 "0e71e908b3e0ecf40a14b76f8fe8444adf469cc8c73aa04c49c624733ce74de3"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.17.2/INTERSECT-v0.17.2-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

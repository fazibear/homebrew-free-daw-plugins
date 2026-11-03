cask "intersect" do
  version "0.18.1"
  sha256 "dbf97f92db4712e96d0f3b6047be978fb28963d6e5035688269b241fe9a5ee5e"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.18.1/INTERSECT-v0.18.1-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

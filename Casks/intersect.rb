cask "intersect" do
  version "0.17.0"
  sha256 "617276473ff5f6dba57096107b0973fa7a92faacea76dbf0f20842eb2ad2dabf"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.17.0/INTERSECT-v0.17.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
  artifact "INTERSECT.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
  app "INTERSECT.app", target: "#{Dir.home}/Applications/INTERSECT.app"
end

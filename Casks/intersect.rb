cask "intersect" do
  version "0.15.4"
  sha256 "c7049481a9bd24e02d1a3c7235a5d42bc36ad5d2f92a6a93c3690282856b1980"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.15.4/INTERSECT-v0.15.4-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  artifact "INTERSECT-v0.15.4-macOS-arm64", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

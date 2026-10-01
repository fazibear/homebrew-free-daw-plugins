cask "owlplug" do
  version "2.0.2"
  sha256 "9dc79e95a2064506b4380cbb011b80f9e8dd9da82f41a4b03303843d842de1df"
  url "https://github.com/DropSnorz/OwlPlug/releases/download/2.0.2/OwlPlug-2.0.2-osx-arm64.dmg"
  name "OwlPlug"
  desc "Free audio plugin"
  homepage "https://github.com/DropSnorz/OwlPlug"
  depends_on :macos
  container type: :dmg
  dmg "OwlPlug-2.0.2-osx-arm64.dmg"
end

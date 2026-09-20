cask "owlplug" do
  version "2.0.1"
  sha256 "100513f647f87a04226eb28292fa10da74d8ad460429277fded29499035acce4"
  url "https://github.com/DropSnorz/OwlPlug/releases/download/2.0.1/OwlPlug-2.0.1-osx-arm64.dmg"
  name "Owlplug"
  desc "Free audio plugin"
  homepage "https://github.com/DropSnorz/OwlPlug"
  depends_on :macos
  dmg "OwlPlug-2.0.1-osx-arm64.dmg"
end

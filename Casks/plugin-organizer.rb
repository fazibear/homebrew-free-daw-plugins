cask "plugin-organizer" do
  version "0.11.1"
  sha256 "ec3136f4b7608077ef4045261198f15d0753e0ff2797ebc62b555085ab868a06"
  url "https://github.com/Frequenzbetrieb/plugin-organizer/releases/download/v0.11.1/Frequenzbetrieb-Plugin-Organizer-macOS-universal.dmg"
  name "plugin-organizer"
  desc "Free audio plugin"
  homepage "https://github.com/Frequenzbetrieb/plugin-organizer"
  depends_on :macos
  container type: :dmg
  app "Frequenzbetrieb Plugin Organizer.app"
end

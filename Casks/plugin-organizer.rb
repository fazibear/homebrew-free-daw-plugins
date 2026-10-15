cask "plugin-organizer" do
  version "0.11.0"
  sha256 "fddbd5e063d96c129351c9570b67737144e13822cacf364b22f13478fa19da7f"
  url "https://github.com/Frequenzbetrieb/plugin-organizer/releases/download/v0.11.0/Frequenzbetrieb-Plugin-Organizer-macOS-universal.dmg"
  name "plugin-organizer"
  desc "Free audio plugin"
  homepage "https://github.com/Frequenzbetrieb/plugin-organizer"
  depends_on :macos
  container type: :dmg
  app "Frequenzbetrieb Plugin Organizer.app"
end

cask "beatcrate" do
  version "1.0.2"
  sha256 "2bdc20d68e526f6891df02b09770ac50eee844f3ed1f1da5851b8b045ec13047"
  url "https://github.com/andrewmfoster/BeatCrate/releases/download/v1.0.2/BeatCrate.dmg"
  name "BeatCrate"
  desc "Free audio plugin"
  homepage "https://github.com/andrewmfoster/BeatCrate"
  depends_on :macos
  container type: :dmg
  app "BeatCrate.app"
end

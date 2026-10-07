cask "ampsim" do
  version "0.5.0"
  sha256 "d2bdf29e8f7e591f12c20d5589076d8b5b08a6cfdccb6941a760fd3a2695074f"
  url "https://github.com/CatastrophicCoder/ampsim/releases/download/v0.5.0/AmpSim-0.5.0-macos-apple-silicon.dmg"
  name "ampsim"
  desc "Free audio plugin"
  homepage "https://github.com/CatastrophicCoder/ampsim"
  depends_on :macos
  container type: :dmg
  app "AmpSim.app"
end

cask "ampsim" do
  version "0.3.0"
  sha256 "8e04af4bcbaf47ad0a0091b660277bbf68e4f429e0a680c8a8d0e9a419b83216"
  url "https://github.com/CatastrophicCoder/ampsim/releases/download/v0.3.0/AmpSim-0.3.0.dmg"
  name "ampsim"
  desc "Free audio plugin"
  homepage "https://github.com/CatastrophicCoder/ampsim"
  depends_on :macos
  container type: :dmg
  app "AmpSim.app"
end

cask "torqwave" do
  version "0.17.0"
  sha256 "33f12b11169c291c84597222e20761d357de453e03a9e62a8b2d2526955f8511"
  url "https://github.com/BobClawblaw/torqwave/releases/download/v0.17.0/Torqwave-0.17.0.dmg"
  name "torqwave"
  desc "Free audio plugin"
  homepage "https://github.com/BobClawblaw/torqwave"
  depends_on :macos
  container type: :dmg
  app "Torqwave.app"
end

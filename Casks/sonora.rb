cask "sonora" do
  version "0.1.9"
  sha256 "50b5d5af67ae85f0488fc59ced9f94fa9abc48de2168662b4a8b2e5bd55db894"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.9/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

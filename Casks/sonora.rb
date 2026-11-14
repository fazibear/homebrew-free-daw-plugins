cask "sonora" do
  version "0.1.42"
  sha256 "e47df6a761baa2acf5207418c1f8d54a6b41d67e41c4170c54335fedca671f91"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.42/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

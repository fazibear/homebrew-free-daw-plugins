cask "sonora" do
  version "0.1.53"
  sha256 "3321e188d07c37a8226e0d149f105cec234ce15c1b2d66ae91728e539a8374ef"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.53/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

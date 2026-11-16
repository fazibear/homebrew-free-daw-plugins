cask "sonora" do
  version "0.1.44"
  sha256 "1eefe93cf03b0c918c7c466021cc88888ce632d0da296aa1c6fdaccf75b8a842"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.44/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

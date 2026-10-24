cask "sonora" do
  version "0.1.3"
  sha256 "9b788e2074d20f106d0d19c471da83061eb733534bce0efc8457f1c7a70f7135"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.3/Sonora-0.1.3.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

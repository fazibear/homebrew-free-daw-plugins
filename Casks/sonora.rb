cask "sonora" do
  version "0.1.51"
  sha256 "ec1d134aa75db50f1ab711dd31a5b72d7a8463689abdea00d9faad7bda72d1a3"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.51/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

cask "sonora" do
  version "0.1.4"
  sha256 "761f69d5bde74fce63caaabb8fffc361fc4e03c3b4cba341ab5bfaeaa623ffbd"
  url "https://github.com/lordillusions/sonora/releases/download/v0.1.4/Sonora-macOS.dmg"
  name "sonora"
  desc "Free audio plugin"
  homepage "https://github.com/lordillusions/sonora"
  depends_on :macos
  container type: :dmg
  app "Sonora.app"
end

cask "meteora" do
  version "0.3.0"
  sha256 "a165563544c955e9f29344b8bfd7aadf0f9ebada2789db7bfdec7de2ae3d64bb"
  url "https://github.com/Grashopr-888/meteora-releases/releases/download/v0.3.0/Meteora-0.3.0-macOS-arm64.zip"
  name "meteora-releases"
  desc "Free audio plugin"
  homepage "https://github.com/Grashopr-888/meteora-releases"
  depends_on :macos
  artifact "Meteora 0.3/Meteora 0.3.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Meteora 0.3.vst3"
  app "Meteora 0.3/Meteora 0.3.app", target: "#{Dir.home}/Applications/Meteora 0.3.app"
end

cask "lucky-seven" do
  version "1.2.0"
  sha256 "5bfb943e9ab9a79ce0130268b0fbc0132a732e0aa2c67a1604639cdb5aa7ba9b"
  url "https://github.com/tomdmaguire/lucky-seven/releases/download/v1.2.0/Lucky-Seven-v1.2.0-macOS.zip"
  name "lucky-seven"
  desc "Free audio plugin"
  homepage "https://github.com/tomdmaguire/lucky-seven"
  depends_on :macos
  artifact "Lucky-Seven-v1.2.0-macOS/Lucky Seven.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lucky Seven.component"
  artifact "Lucky-Seven-v1.2.0-macOS/Lucky Seven.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Lucky Seven.vst3"
end

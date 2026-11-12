cask "lucky-reference" do
  version "0.2.0"
  sha256 "14e4d11d2b1a0b7c7c4d8e228ed9488e11c88d25019f59d24a1f75190ec70dc4"
  url "https://github.com/tomdmaguire/lucky-reference/releases/download/v0.2.0/Lucky-Reference-v0.2.0-macOS.zip"
  name "lucky-reference"
  desc "Free audio plugin"
  homepage "https://github.com/tomdmaguire/lucky-reference"
  depends_on :macos
  artifact "Lucky-Reference-v0.2.0-macOS/Lucky Reference.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Lucky Reference.vst3"
end

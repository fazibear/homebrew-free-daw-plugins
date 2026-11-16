cask "lucky-reference" do
  version "1.0.0"
  sha256 "9904f6b8d32cb99c2ca393ca470015bfb9808c27cdb43e2be8f0d038c07a4004"
  url "https://github.com/tomdmaguire/lucky-reference/releases/download/v1.0.0/Lucky-Reference-v1.0.0-macOS.zip"
  name "lucky-reference"
  desc "Free audio plugin"
  homepage "https://github.com/tomdmaguire/lucky-reference"
  depends_on :macos
  artifact "Lucky-Reference-v1.0.0-macOS/Lucky Reference.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lucky Reference.component"
  artifact "Lucky-Reference-v1.0.0-macOS/Lucky Reference.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Lucky Reference.vst3"
end

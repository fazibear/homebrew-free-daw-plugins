cask "lucky-reference" do
  version "1.1.0"
  sha256 "469b24755d9e0549a3faf532a9cc9dd2d293e7df203006ba4ee996975df81f2a"
  url "https://github.com/tomdmaguire/lucky-reference/releases/download/v1.1.0/Lucky-Reference-v1.1.0-macOS.zip"
  name "lucky-reference"
  desc "Free audio plugin"
  homepage "https://github.com/tomdmaguire/lucky-reference"
  depends_on :macos
  artifact "Lucky-Reference-v1.1.0-macOS/Lucky Reference.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lucky Reference.component"
  artifact "Lucky-Reference-v1.1.0-macOS/Lucky Reference.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Lucky Reference.vst3"
end

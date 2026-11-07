cask "omniharp" do
  version "0.1.0"
  sha256 "79530556a08caf7c293fe5f06c470b74658c4967432807e0eae5c6f63df2d7bf"
  url "https://github.com/mard4/omniharp-releases/releases/download/v0.1.0/OmniHarp-macOS.zip"
  name "omniharp-releases"
  desc "Free audio plugin"
  homepage "https://github.com/mard4/omniharp-releases"
  depends_on :macos
  artifact "OmniHarp-macOS/OmniHarp.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/OmniHarp.component"
  artifact "OmniHarp-macOS/OmniHarp.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/OmniHarp.vst3"
  app "OmniHarp-macOS/OmniHarp.app", target: "#{Dir.home}/Applications/OmniHarp.app"
end

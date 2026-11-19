cask "small-clone-circuit-chorus" do
  version "0.1.0"
  sha256 "958bc7f266474942c7b8e1a8c4d8bee90caaa3e2ea19027db24bdebeb2c0ed78"
  url "https://github.com/nickdc8/small-clone-circuit-chorus/releases/download/v0.1.0/Small-Clone-Circuit-Chorus-0.1.0-macOS-universal.zip"
  name "small-clone-circuit-chorus"
  desc "Free audio plugin"
  homepage "https://github.com/nickdc8/small-clone-circuit-chorus"
  depends_on :macos
  artifact "Small Clone Circuit Chorus/Small Clone Circuit Chorus.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Small Clone Circuit Chorus.vst3"
  app "Small Clone Circuit Chorus/Small Clone Circuit Chorus.app", target: "#{Dir.home}/Applications/Small Clone Circuit Chorus.app"
end

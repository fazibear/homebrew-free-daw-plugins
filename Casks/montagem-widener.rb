cask "montagem-widener" do
  version "0.2.0-beta"
  sha256 "e5aa1d7d5d0c14c1356768987de5cb3b09ce98aacb281a6da184031aeb53aa37"
  url "https://github.com/nabsei/montagem-widener/releases/download/v0.2.0-beta/MontagemWidener_Beta_Mac.zip"
  name "montagem-widener"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-widener"
  depends_on :macos
  artifact "Montagem Widener.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Montagem Widener.component"
  artifact "Montagem Widener.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Montagem Widener.vst3"
  app "Montagem Widener.app", target: "#{Dir.home}/Applications/Montagem Widener.app"
end

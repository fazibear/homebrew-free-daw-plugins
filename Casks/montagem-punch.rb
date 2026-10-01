cask "montagem-punch" do
  version "0.2.0-beta"
  sha256 "935318ba77399d500d6dca82155717c2770a66d50d2f4b1c7bb7fc76aa20fa45"
  url "https://github.com/nabsei/montagem-punch/releases/download/v0.2.0-beta/MontagemPunch_Beta_Mac.zip"
  name "montagem-punch"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-punch"
  depends_on :macos
  artifact "Montagem Punch.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Montagem Punch.component"
  artifact "Montagem Punch.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Montagem Punch.vst3"
  app "Montagem Punch.app", target: "#{Dir.home}/Applications/Montagem Punch.app"
end

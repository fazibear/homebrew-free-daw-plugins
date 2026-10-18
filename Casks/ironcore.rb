cask "ironcore" do
  version "0.8.1"
  sha256 "1545fe10b7783dffe49bb9464031cfb293d81280c0fb94bcd3656a933363eb0e"
  url "https://github.com/Frequenzbetrieb/ironcore/releases/download/v0.8.1/IRONCORE-macOS-universal.zip"
  name "ironcore"
  desc "Free audio plugin"
  homepage "https://github.com/Frequenzbetrieb/ironcore"
  depends_on :macos
  artifact "IRONCORE.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/IRONCORE.component"
  artifact "IRONCORE.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/IRONCORE.vst3"
  app "IRONCORE.app", target: "#{Dir.home}/Applications/IRONCORE.app"
end

cask "halfcock" do
  version "1.0.0"
  sha256 "9f54f3044ae221bc67e29e87add646c729eecf4b4b8e36fc69ba6fc5cd868cc1"
  url "https://github.com/nickdc8/halfcock/releases/download/v1.0.0/Halfcock-1.0.0-macOS-universal.zip"
  name "halfcock"
  desc "Free audio plugin"
  homepage "https://github.com/nickdc8/halfcock"
  depends_on :macos
  artifact "Halfcock/Halfcock.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Halfcock.component"
  artifact "Halfcock/Halfcock.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Halfcock.vst3"
  app "Halfcock/Halfcock.app", target: "#{Dir.home}/Applications/Halfcock.app"
end

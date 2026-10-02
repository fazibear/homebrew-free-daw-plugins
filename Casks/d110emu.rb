cask "d110emu" do
  version "1.0.0"
  sha256 "fe0f64d3b8ff7f1ed809e93d516d8f28c119d5a4f799154390f3ad3de5071993"
  url "https://github.com/springboobsquirepin/d110emu/releases/download/1.0.0/D110Emu-macos-aarch64.dmg"
  name "d110emu"
  desc "Free audio plugin"
  homepage "https://github.com/springboobsquirepin/d110emu"
  depends_on :macos
  container type: :dmg
  artifact "Plugins/bin/macosx-Release/AU/D110Emu.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/D110Emu.component"
  artifact "Plugins/bin/macosx-Release/VST3/D110Emu.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/D110Emu.vst3"
  app "D110Emu.app", target: "#{Dir.home}/Applications/D110Emu.app"
  app "Other/MT32Translator.app", target: "#{Dir.home}/Applications/MT32Translator.app"
  app "Other/ToneEditor.app", target: "#{Dir.home}/Applications/ToneEditor.app"
end

cask "simple-ir" do
  version "1.0.1"
  sha256 "e4630a820e53096eab20c7e1fce585b8688eb155f2f6adbdd5ed69ab07f2120e"
  url "https://github.com/leocb/Simple-IR-VST/releases/download/v1.0.1/Simple-IR-VST-1.0.1-macOS-universal.zip"
  name "Simple-IR"
  desc "Free audio plugin"
  homepage "https://github.com/leocb/Simple-IR-VST"
  depends_on :macos
  artifact "Simple IR VST 1.0.1/IR Loader.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/IR Loader.component"
  artifact "Simple IR VST 1.0.1/IR Loader.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/IR Loader.vst3"
  app "Simple IR VST 1.0.1/IR Loader.app", target: "#{Dir.home}/Applications/IR Loader.app"
end

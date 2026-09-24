cask "fogpad" do
  version "1.0.3"
  sha256 :no_check
  url "https://github.com/igorski/fogpad/releases/download/1.0.3/fogpad.1.0.3_macos.zip"
  name "fogpad"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/fogpad"
  depends_on :macos
  artifact "AU/Fogpad AUV3.app/Contents/PlugIns/auv3.appex/Contents/PlugIns/plugin.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

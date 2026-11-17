cask "lucky-reverb" do
  version "2.0.0"
  sha256 "2611d4e7ed49ef5593b0ce7964105580f532a1771d6f10eaece7f68d72b875ea"
  url "https://github.com/tomdmaguire/lucky-reverb/releases/download/v2.0.0/Lucky-Reverb-v2.0.0-macOS.zip"
  name "lucky-reverb"
  desc "Free audio plugin"
  homepage "https://github.com/tomdmaguire/lucky-reverb"
  depends_on :macos
  artifact "Lucky-Reverb-v2.0.0-macOS/Lucky Reverb.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lucky Reverb.component"
  artifact "Lucky-Reverb-v2.0.0-macOS/Lucky Reverb.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Lucky Reverb.vst3"
end

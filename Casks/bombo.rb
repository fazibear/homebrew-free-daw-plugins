cask "bombo" do
  version :latest
  sha256 :no_check
  url "https://github.com/hyperfocusdsp/bombo/releases/latest/download/Bombo-macOS.zip"
  name "Bombo"
  desc "Kick synthesizer and rumble effects audio plugin"
  homepage "https://github.com/hyperfocusdsp/bombo"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end

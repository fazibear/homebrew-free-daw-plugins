cask "nabra" do
  version "1.1.0"
  sha256 "43638991c092adf7907d7f60fee36efe51fb49c79e3dd668266e7533fcacde61"
  url "https://github.com/femifleming/nabra/releases/download/v1.1.0/Nabra-1.1.0-macOS.zip"
  name "nabra"
  desc "Free audio plugin"
  homepage "https://github.com/femifleming/nabra"
  depends_on :macos
  artifact "Nabra.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Nabra.component"
  artifact "Nabra.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Nabra.vst3"
  app "Nabra.app", target: "#{Dir.home}/Applications/Nabra.app"
end

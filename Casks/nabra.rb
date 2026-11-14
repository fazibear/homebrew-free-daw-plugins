cask "nabra" do
  version "1.1.1"
  sha256 "57b914b45d6fc8753f2d0dd08fb9fad822f1d34a14184b5fbaabf9c29bc9f0d4"
  url "https://github.com/femifleming/nabra/releases/download/v1.1.1/Nabra-1.1.1-macOS.zip"
  name "nabra"
  desc "Free audio plugin"
  homepage "https://github.com/femifleming/nabra"
  depends_on :macos
  artifact "Nabra.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Nabra.component"
  artifact "Nabra.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Nabra.vst3"
  app "Nabra.app", target: "#{Dir.home}/Applications/Nabra.app"
end

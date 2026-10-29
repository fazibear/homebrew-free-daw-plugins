cask "retroexx" do
  version "0.1.0"
  sha256 "5b68f53333ae524fea581b5e34c40a0175fa64b23db365b9bfd815f614d7c845"
  url "https://github.com/VexxPlugins/retroexx/releases/download/v0.1.0/Retroexx-0.1.0-macOS.zip"
  name "retroexx"
  desc "Free audio plugin"
  homepage "https://github.com/VexxPlugins/retroexx"
  depends_on :macos
  artifact "Retroexx-0.1.0-macOS/Retroexx.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Retroexx.component"
  artifact "Retroexx-0.1.0-macOS/Retroexx.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Retroexx.vst3"
  app "Retroexx-0.1.0-macOS/Retroexx.app", target: "#{Dir.home}/Applications/Retroexx.app"
end

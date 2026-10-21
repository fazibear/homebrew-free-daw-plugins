cask "toyland-kb09" do
  version "1.9.0"
  sha256 "14d9b1b2afe34211c44eda90f71ff7590253515604d597d09614c404d0a5fe85"
  url "https://github.com/kevinberg84/toyland-kb09/releases/download/v1.9.0/KB-09-1.9.0-Mac.zip"
  name "toyland-kb09"
  desc "Free audio plugin"
  homepage "https://github.com/kevinberg84/toyland-kb09"
  depends_on :macos
  artifact "Toyland KB-09 for Mac/Support/Toyland KB-09.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Toyland KB-09.component"
  artifact "Toyland KB-09 for Mac/Support/Toyland KB-09.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Toyland KB-09.vst3"
  app "Toyland KB-09 for Mac/Toyland KB-09 Standalone.app", target: "#{Dir.home}/Applications/Toyland KB-09 Standalone.app"
end

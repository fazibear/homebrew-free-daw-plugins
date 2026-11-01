cask "toyland-kb09" do
  version "1.10.1"
  sha256 "b44438bedde3ca755625afa327180f3f817068c87ef0d32efbf7fa2fe5341048"
  url "https://github.com/kevinberg84/toyland-kb09/releases/download/v1.10.1/KB-09-1.10.1-Mac.zip"
  name "toyland-kb09"
  desc "Free audio plugin"
  homepage "https://github.com/kevinberg84/toyland-kb09"
  depends_on :macos
  artifact "Toyland KB-09 for Mac/Support/Toyland KB-09.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Toyland KB-09.component"
  artifact "Toyland KB-09 for Mac/Support/Toyland KB-09.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Toyland KB-09.vst3"
  app "Toyland KB-09 for Mac/Toyland KB-09 Standalone.app", target: "#{Dir.home}/Applications/Toyland KB-09 Standalone.app"
end

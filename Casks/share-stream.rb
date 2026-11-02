cask "share-stream" do
  version "0.6.0"
  sha256 "52e58342497821fcd3fd921e2b5fc0cf27689f015f54846fc3d12f321172e3fa"
  url "https://github.com/vvruspat/share-stream/releases/download/v0.6.0/ShareStream-macOS.zip"
  name "share-stream"
  desc "Free audio plugin"
  homepage "https://github.com/vvruspat/share-stream"
  depends_on :macos
  artifact "ShareStream-macOS/Share Stream.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Share Stream.component"
  artifact "ShareStream-macOS/Share Stream.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Share Stream.vst3"
  app "ShareStream-macOS/Share Stream Chat.app", target: "#{Dir.home}/Applications/Share Stream Chat.app"
  app "ShareStream-macOS/Share Stream.app", target: "#{Dir.home}/Applications/Share Stream.app"
end

cask "share-stream" do
  version "0.5.0"
  sha256 "552a5ce198eec5f6fe2fbd2c5fccc89f8744d42abaad1b470089e26f05b23022"
  url "https://github.com/vvruspat/share-stream/releases/download/v0.5.0/ShareStream-macOS.zip"
  name "share-stream"
  desc "Free audio plugin"
  homepage "https://github.com/vvruspat/share-stream"
  depends_on :macos
  artifact "ShareStream-macOS/Share Stream.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Share Stream.component"
  artifact "ShareStream-macOS/Share Stream.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Share Stream.vst3"
  app "ShareStream-macOS/Share Stream.app", target: "#{Dir.home}/Applications/Share Stream.app"
end

cask "sighs" do
  version "1.0.0"
  sha256 "60dd31e53eef0f44cfb997e314352eac7ae0fc404492561f5a7c7e55283c8017"
  url "https://github.com/nickdc8/sighs/releases/download/v1.0.0/Sighs-1.0.0-macOS-universal.zip"
  name "sighs"
  desc "Free audio plugin"
  homepage "https://github.com/nickdc8/sighs"
  depends_on :macos
  artifact "Sighs/Sighs.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sighs.component"
  artifact "Sighs/Sighs.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Sighs.vst3"
  app "Sighs/Sighs.app", target: "#{Dir.home}/Applications/Sighs.app"
end

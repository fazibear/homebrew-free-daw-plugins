cask "shabba" do
  version "1.0.0"
  sha256 "ef4708a0e06a43cc66544af0d7a4fc407f9329e598498dcb0071ea36b5d48998"
  url "https://github.com/Shabbamusic/shabba-plugins/releases/download/v1.0.0/SHABBA-acid-1.0.0-mac-vst3.zip"
  name "shabba"
  desc "Free audio plugin"
  homepage "https://github.com/Shabbamusic/shabba-plugins"
  depends_on :macos
  artifact "SHABBA Acid.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/SHABBA Acid.vst3"
end

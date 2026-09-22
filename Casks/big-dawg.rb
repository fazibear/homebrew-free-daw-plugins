cask "big-dawg" do
  version "0.2.0"
  sha256 "15d893da2e38c4ae1da132f0bc3a0ff6185f04096b8b70519933c9a5f443b544"
  url "https://github.com/orphicaxiom/big-dawg/releases/download/v0.2.0/BigDawg-v0.2.0-macOS.zip"
  name "big-dawg"
  desc "Free audio plugin"
  homepage "https://github.com/orphicaxiom/big-dawg"
  depends_on :macos
  artifact "BigDawg-v0.2.0-macOS/BigDawg.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

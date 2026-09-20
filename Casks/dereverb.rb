cask "dereverb" do
  version "0.5.0"
  sha256 "dafab4e813e332c795f09c2ee5131379da0b158a20d7ec032f19015b0ed5c0eb"
  url "https://github.com/jenyanepoimannykh-it/dereverb-vst3/releases/download/v0.5.0/JenyaDereverb2-0.5.0-macOS-AU.zip"
  name "dereverb"
  desc "Free audio plugin"
  homepage "https://github.com/jenyanepoimannykh-it/dereverb-vst3"
  depends_on :macos
  artifact "JenyaDereverb2-0.5.0-macOS-AU", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

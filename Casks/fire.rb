cask "fire" do
  version "1.5.0"
  sha256 "e4c63f6954ad89a4137d50de71dd9dd00486ad8afeca2f0ebaeb3b7c837e24b3"
  url "https://github.com/jerryuhoo/Fire/releases/download/v1.5.0/Fire-1.5.0-macOS.zip"
  name "Fire"
  desc "Multi-band distortion plugin by Jerry Uhoo"
  homepage "https://jerryuhoo.github.io/Fire/"
  depends_on :macos
  artifact "AU/Fire.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Fire.component"
  artifact "CLAP/Fire.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Fire.clap"
  artifact "VST3/Fire.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Fire.vst3"
end

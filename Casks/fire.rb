cask "fire" do
  version "2.0.0"
  sha256 "f00e4ed4e25fed1954b591bb3c18fb6326cd68a4eb72495ad20d222e9fe78d39"
  url "https://github.com/jerryuhoo/Fire/releases/download/v2.0.0/Fire-2.0.0-macOS.zip"
  name "Fire"
  desc "Multi-band distortion plugin by Jerry Uhoo"
  homepage "https://jerryuhoo.github.io/Fire/"
  depends_on :macos
  artifact "AU/Fire.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Fire.component"
  artifact "CLAP/Fire.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Fire.clap"
  artifact "VST3/Fire.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Fire.vst3"
end

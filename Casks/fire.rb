cask "fire" do
  version "2.1.0"
  sha256 "cda7814a05fdf57f78497f746cba06ac0f4842ae21b61aed7eccc66dc7df11c3"
  url "https://github.com/jerryuhoo/Fire/releases/download/v2.1.0/Fire-2.1.0-macOS.zip"
  name "Fire"
  desc "Multi-band distortion plugin by Jerry Uhoo"
  homepage "https://jerryuhoo.github.io/Fire/"
  depends_on :macos
  artifact "AU/Fire.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Fire.component"
  artifact "CLAP/Fire.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Fire.clap"
  artifact "VST3/Fire.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Fire.vst3"
end

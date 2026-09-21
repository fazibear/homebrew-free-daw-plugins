cask "gabcis-acoustic-cloak" do
  version "1.0.0"
  sha256 "86b44a2d9f8a3dd567e17c05d5a5422bdf64af9e5fa712a00c2857eb6e6bdbae"
  url "https://github.com/rcptr2/gabcis-acoustic-cloak/releases/download/v1.0.0/AcousticCloak-v1.0.0-macOS-Intel-VST3.zip"
  name "gabcis-acoustic-cloak"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-acoustic-cloak"
  depends_on :macos
  artifact "AcousticCloak-v1.0.0-macOS-Intel-VST3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

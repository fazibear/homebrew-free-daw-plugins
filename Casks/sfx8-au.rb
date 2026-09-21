cask "sfx8-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SFX8_MacAU.zip"
  name "SFX8"
  desc "SFX8 is a retro style sound effects generator inspired by the sounds of NES."
  homepage "https://plugins4free.com/plugin/3017"
  depends_on :macos
  artifact "SFX8_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

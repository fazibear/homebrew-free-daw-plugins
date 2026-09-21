cask "papu-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/PAPU_MacAU.zip"
  name "PAPU"
  desc "PAPU is a Nintendo Gameboy synthesizer emulation ."
  homepage "https://plugins4free.com/plugin/2838"
  depends_on :macos
  artifact "PAPU_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

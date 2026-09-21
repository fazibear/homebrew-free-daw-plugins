cask "rp2a03-nes-rp2a03-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/RP2A03_MacAU.zip"
  name "RP2A03 NES RP2A03 Emulation"
  desc "RP2A03 NES RP2A03 Emulation"
  homepage "https://plugins4free.com/plugin/2833"
  depends_on :macos
  artifact "RP2A03_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

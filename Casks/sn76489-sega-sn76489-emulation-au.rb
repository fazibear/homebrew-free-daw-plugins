cask "sn76489-sega-sn76489-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SN76489_MacAU.zip"
  name "SN76489 Sega SN76489 emulation"
  desc "SN76489 Sega SN76489 emulation"
  homepage "https://plugins4free.com/plugin/2835"
  depends_on :macos
  artifact "SN76489_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

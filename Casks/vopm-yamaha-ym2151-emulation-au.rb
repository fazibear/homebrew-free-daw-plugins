cask "vopm-yamaha-ym2151-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VOPM_MacAU.zip"
  name "VOPM Yamaha YM2151 emulation"
  desc "VOPM Yamaha YM2151 emulation"
  homepage "https://plugins4free.com/plugin/1066"
  depends_on :macos
  artifact "VOPM_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

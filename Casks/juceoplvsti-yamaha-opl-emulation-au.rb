cask "juceoplvsti-yamaha-opl-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/JuceOPLVSTi_MacAU.zip"
  name "JuceOPLVSTi Yamaha OPL emulation"
  desc "JuceOPLVSTi Yamaha OPL emulation"
  homepage "https://plugins4free.com/plugin/2696"
  depends_on :macos
  artifact "JuceOPLVSTi_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

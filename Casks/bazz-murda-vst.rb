cask "bazz-murda-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DC_Bazz_Murda_MAC_VST.zip"
  name "Bazz Murda"
  desc "Bazz Murda Free is a bass/kick synthesizer ."
  homepage "https://plugins4free.com/plugin/2519"
  depends_on :macos
  artifact "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/Bazz_Murda_v1_8_FREE_32bit.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

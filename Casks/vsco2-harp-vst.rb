cask "vsco2-harp-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Harp_V2.vst.zip"
  name "VSCO2 Harp"
  desc "VSCO2 Harp is a sampled harp ."
  homepage "https://plugins4free.com/plugin/2554"
  depends_on :macos
  artifact "VSCO2 Harp.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

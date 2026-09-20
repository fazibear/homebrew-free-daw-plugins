cask "vsco2-harp-harp-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Harp_V2.component.zip"
  name "VSCO2 Harp Harp"
  desc "VSCO2 Harp Harp"
  homepage "https://plugins4free.com/plugin/2554"
  depends_on :macos
  artifact "VSCO2_Harp_V2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

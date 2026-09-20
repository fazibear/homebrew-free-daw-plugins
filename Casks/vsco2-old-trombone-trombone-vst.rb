cask "vsco2-old-trombone-trombone-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Old_Trombone_V2.vst.zip"
  name "VSCO2 Old Trombone Trombone"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2725"
  depends_on :macos
  artifact "VSCO2_Old_Trombone_V2.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

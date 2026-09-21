cask "vsco2-old-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Old_Trombone_V2.component.zip"
  name "VSCO2 Old Trombone"
  desc "VSCO2 Old Trombone"
  homepage "https://plugins4free.com/plugin/2725"
  depends_on :macos
  artifact "VSCO2_Old_Trombone_V2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

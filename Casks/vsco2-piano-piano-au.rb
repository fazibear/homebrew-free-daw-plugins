cask "vsco2-piano-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Piano_V2.component.zip"
  name "VSCO2 Piano Piano"
  desc "VSCO2 Piano Piano"
  homepage "https://plugins4free.com/plugin/2729"
  depends_on :macos
  artifact "VSCO2_Piano_V2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

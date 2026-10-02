cask "vsco2-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Piano_V2.component.zip"
  name "VSCO2 Piano"
  desc "VSCO2 Piano is a sampled piano ."
  homepage "https://plugins4free.com/plugin/2729"
  depends_on :macos
  artifact "VSCO2 Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Piano.component"
end

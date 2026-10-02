cask "vsco2-horn-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Horn_V2.component.zip"
  name "VSCO2 Horn"
  desc "VSCO2 Horn is a sampled french horn ."
  homepage "https://plugins4free.com/plugin/2555"
  depends_on :macos
  artifact "VSCO2 Horn.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Horn.component"
end

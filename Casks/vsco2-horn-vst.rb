cask "vsco2-horn-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Horn_V2.vst.zip"
  name "VSCO2 Horn"
  desc "VSCO2 Horn is a sampled french horn ."
  homepage "https://plugins4free.com/plugin/2555"
  depends_on :macos
  artifact "VSCO2 Horn.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Horn.vst"
end

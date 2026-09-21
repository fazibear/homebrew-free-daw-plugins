cask "vsco2-viola-section-viola-section-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Viola_Section_V2.vst.zip"
  name "VSCO2 Viola Section Viola section"
  desc "VSCO2 Viola Section Viola section"
  homepage "https://plugins4free.com/plugin/2542"
  depends_on :macos
  artifact "VSCO2_Viola_Section_V2.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

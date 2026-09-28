cask "vsco2-organ-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Organ_V2.vst.zip"
  name "VSCO2 Organ"
  desc "VSCO2 Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2726"
  depends_on :macos
  artifact "VSCO2 Organ.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

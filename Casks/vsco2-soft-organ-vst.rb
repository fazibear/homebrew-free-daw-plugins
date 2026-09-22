cask "vsco2-soft-organ-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Organ_Soft_V2.vst.zip"
  name "VSCO2 Soft Organ"
  desc "VSCO2 Soft Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2727"
  depends_on :macos
  artifact "VSCO2 Organ Soft.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

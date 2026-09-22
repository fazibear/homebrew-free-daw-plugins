cask "vsco2-oboe-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Oboe_V2.vst.zip"
  name "VSCO2 Oboe"
  desc "VSCO2 Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2724"
  depends_on :macos
  artifact "VSCO2 Oboe.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

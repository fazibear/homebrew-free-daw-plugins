cask "vsco2-tuba-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Tuba_V2.vst.zip"
  name "VSCO2 Tuba"
  desc "VSCO2 Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2558"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Tuba.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Tuba.vst"
  end
end

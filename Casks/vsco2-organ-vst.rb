cask "vsco2-organ-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Organ_V2.vst.zip"
  name "VSCO2 Organ"
  desc "VSCO2 Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2726"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Organ.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Organ.vst"
  end
end

cask "vsco2-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Flute_V2.vst.zip"
  name "VSCO2 Flute"
  desc "VSCO2 Flute is a sampled flute ."
  homepage "https://plugins4free.com/plugin/2721"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Flute.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Flute.vst"
  end
end

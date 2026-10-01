cask "vsco2-violin-section-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Violin_Section_V2.vst.zip"
  name "VSCO2 Violin Section"
  desc "VSCO2 Violin Section is a sampled violin section ."
  homepage "https://plugins4free.com/plugin/2539"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Violin Section.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Violin Section.vst"
  end
end

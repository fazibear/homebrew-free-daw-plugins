cask "vsco2-violin-section-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Violin_Section_V2.component.zip"
  name "VSCO2 Violin Section"
  desc "VSCO2 Violin Section is a sampled violin section ."
  homepage "https://plugins4free.com/plugin/2539"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "VSCO2 Violin Section.component", "{{user}}/Library/Audio/Plug-Ins/Components/VSCO2 Violin Section.component"
  end
end

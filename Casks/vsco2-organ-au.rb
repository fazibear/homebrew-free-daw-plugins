cask "vsco2-organ-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Organ_V2.component.zip"
  name "VSCO2 Organ"
  desc "VSCO2 Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2726"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "VSCO2 Organ.component", "{{user}}/Library/Audio/Plug-Ins/Components/VSCO2 Organ.component"
  end
end

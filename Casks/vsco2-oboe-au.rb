cask "vsco2-oboe-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Oboe_V2.component.zip"
  name "VSCO2 Oboe"
  desc "VSCO2 Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2724"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "VSCO2 Oboe.component", "{{user}}/Library/Audio/Plug-Ins/Components/VSCO2 Oboe.component"
  end
end

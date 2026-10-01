cask "vsco2-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Flute_V2.component.zip"
  name "VSCO2 Flute"
  desc "VSCO2 Flute is a sampled flute ."
  homepage "https://plugins4free.com/plugin/2721"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "VSCO2 Flute.component", "{{user}}/Library/Audio/Plug-Ins/Components/VSCO2 Flute.component"
  end
end

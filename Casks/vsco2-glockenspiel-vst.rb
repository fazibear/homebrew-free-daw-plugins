cask "vsco2-glockenspiel-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Glockenspiel_V2.vst.zip"
  name "VSCO2 Glockenspiel"
  desc "VSCO2 Glockenspiel is a sampled glockenspiel ."
  homepage "https://plugins4free.com/plugin/2722"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Glockenspiel.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Glockenspiel.vst"
  end
end

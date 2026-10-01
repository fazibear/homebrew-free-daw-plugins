cask "sonatina-bassoon-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Bassoon.vst.zip"
  name "Sonatina Bassoon"
  desc "Sonatina Bassoon is a sampled bassoon ."
  homepage "https://plugins4free.com/plugin/2309"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Sonatina Bassoon.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Bassoon.vst"
  end
end

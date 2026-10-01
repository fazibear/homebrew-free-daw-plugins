cask "sonatina-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Piano.vst.zip"
  name "Sonatina Piano"
  desc "Sonatina Piano is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2552"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Sonatina Piano.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Piano.vst"
  end
end

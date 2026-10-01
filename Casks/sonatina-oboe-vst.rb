cask "sonatina-oboe-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Oboe.vst.zip"
  name "Sonatina Oboe"
  desc "Sonatina Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2314"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Sonatina Oboe.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Oboe.vst"
  end
end

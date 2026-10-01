cask "sonatina-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Flute.vst.zip"
  name "Sonatina Flute"
  desc "Sonatina Flute is a set of sampled flutes ."
  homepage "https://plugins4free.com/plugin/2312"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Sonatina Flute.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Flute.vst"
  end
end

cask "sonatina-tuba-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Tuba.vst.zip"
  name "Sonatina Tuba"
  desc "Sonatina Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2308"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "Sonatina Tuba.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Tuba.vst", recursive: true
  end
end

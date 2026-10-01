cask "sonatina-oboe-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Oboe.component.zip"
  name "Sonatina Oboe"
  desc "Sonatina Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2314"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Oboe.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Oboe.component"
  end
end

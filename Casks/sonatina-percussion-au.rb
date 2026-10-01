cask "sonatina-percussion-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Percussion.component.zip"
  name "Sonatina Percussion"
  desc "Sonatina Percussion is a sampled classical percussion set from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2330"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Percussion.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Percussion.component"
  end
end

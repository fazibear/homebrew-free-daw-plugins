cask "sonatina-bassoon-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Bassoon.component.zip"
  name "Sonatina Bassoon"
  desc "Sonatina Bassoon is a sampled bassoon ."
  homepage "https://plugins4free.com/plugin/2309"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Bassoon.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Bassoon.component"
  end
end

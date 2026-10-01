cask "sonatina-horn-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Horn.component.zip"
  name "Sonatina Horn"
  desc "Sonatina Horn is a sampled horn ."
  homepage "https://plugins4free.com/plugin/2307"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Horn.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Horn.component"
  end
end

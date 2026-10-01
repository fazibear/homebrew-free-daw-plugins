cask "sonatina-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Piano.component.zip"
  name "Sonatina Piano"
  desc "Sonatina Piano is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2552"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Piano.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Piano.component"
  end
end

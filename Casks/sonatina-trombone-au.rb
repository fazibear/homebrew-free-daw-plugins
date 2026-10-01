cask "sonatina-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Trombone.component.zip"
  name "Sonatina Trombone"
  desc "Sonatina Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2306"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Trombone.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Trombone.component"
  end
end

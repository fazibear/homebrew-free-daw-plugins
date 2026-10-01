cask "sonatina-tuba-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Tuba.component.zip"
  name "Sonatina Tuba"
  desc "Sonatina Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2308"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Sonatina Tuba.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Tuba.component", recursive: true
  end
end

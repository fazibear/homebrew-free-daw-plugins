cask "sonatina-cello-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Cello.component.zip"
  name "Sonatina Cello"
  desc "Sonatina Cello is a sampled Cello ."
  homepage "https://plugins4free.com/plugin/2299"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Cello.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Cello.component"
  end
end

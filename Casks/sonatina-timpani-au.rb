cask "sonatina-timpani-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Timpani.component.zip"
  name "Sonatina Timpani"
  desc "Sonatina Timpani is a sampled timpani from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2331"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Sonatina Timpani.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Timpani.component", recursive: true
  end
end

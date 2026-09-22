cask "sonatina-trumpet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Trumpet.component.zip"
  name "Sonatina Trumpet"
  desc "Sonatina Trumpet is a sampled trumpet ."
  homepage "https://plugins4free.com/plugin/2305"
  depends_on :macos
  artifact "Sonatina Trumpet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

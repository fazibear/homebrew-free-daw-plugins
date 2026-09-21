cask "sonatina-tuba-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Tuba.component.zip"
  name "Sonatina Tuba"
  desc "Sonatina Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2308"
  depends_on :macos
  artifact "Sonatina_Tuba.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

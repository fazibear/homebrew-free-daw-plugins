cask "sonatina-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Trombone.component.zip"
  name "Sonatina Trombone"
  desc "Sonatina Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2306"
  depends_on :macos
  artifact "Sonatina Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

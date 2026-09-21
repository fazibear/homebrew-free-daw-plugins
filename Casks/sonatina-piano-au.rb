cask "sonatina-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Piano.component.zip"
  name "Sonatina Piano"
  desc "Sonatina Piano is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2552"
  depends_on :macos
  artifact "Sonatina_Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

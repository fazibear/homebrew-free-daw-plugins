cask "sonatina-oboe-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Oboe.component.zip"
  name "Sonatina Oboe"
  desc "Sonatina Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2314"
  depends_on :macos
  artifact "Sonatina Oboe.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Oboe.component"
end

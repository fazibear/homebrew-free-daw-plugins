cask "sonatina-xylophone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Xylophone.component.zip"
  name "Sonatina Xylophone"
  desc "Sonatina Xylophone is a sampled xylophone from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2332"
  depends_on :macos
  artifact "Sonatina Xylophone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

cask "sonatina-flute-flute-piccolo-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Flute.component.zip"
  name "Sonatina Flute Flute / Piccolo"
  desc "Sonatina Flute Flute / Piccolo"
  homepage "https://plugins4free.com/plugin/2312"
  depends_on :macos
  artifact "Sonatina_Flute.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

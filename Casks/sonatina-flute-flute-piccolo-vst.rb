cask "sonatina-flute-flute-piccolo-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Flute.vst.zip"
  name "Sonatina Flute Flute / Piccolo"
  desc "Sonatina Flute Flute / Piccolo"
  homepage "https://plugins4free.com/plugin/2312"
  depends_on :macos
  artifact "Sonatina_Flute.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "sonatina-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Piano.vst.zip"
  name "Sonatina Piano"
  desc "Sonatina Piano is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2552"
  depends_on :macos
  artifact "Sonatina Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "kairatune-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Kairatune-1.2.5-VSTi-OSX.zip"
  name "Kairatune"
  desc "Kairatune is designed to produce crisp and tight electric sounds for electronic music production."
  homepage "https://plugins4free.com/plugin/1018"
  depends_on :macos
  artifact "Kairatune-1.2.5-VSTi-OSX/Kairatune.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "merlittzer-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MK_Merlittzer.vst.zip"
  name "Merlittzer"
  desc "Musyng Kite Merlittzer is a sampled Wurlitzer electric piano ."
  homepage "https://plugins4free.com/plugin/2322"
  depends_on :macos
  artifact "MK Merlittzer.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

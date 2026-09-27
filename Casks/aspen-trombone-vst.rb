cask "aspen-trombone-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trombone_vst3.vst.zip"
  name "Aspen Trombone"
  desc "Aspen Trombone ."
  homepage "https://plugins4free.com/plugin/3320"
  depends_on :macos
  artifact "Aspen Trombone.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

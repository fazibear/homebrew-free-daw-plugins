cask "aspen-trumpet-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trumpet-2_vst3.vst.zip"
  name "Aspen Trumpet 2"
  desc "Aspen Trumpet 2."
  homepage "https://plugins4free.com/plugin/3322"
  depends_on :macos
  artifact "Aspen Trumpet 2.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

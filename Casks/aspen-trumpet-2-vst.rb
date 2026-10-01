cask "aspen-trumpet-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trumpet-2_vst3.vst.zip"
  name "Aspen Trumpet 2"
  desc "Aspen Trumpet 2."
  homepage "https://plugins4free.com/plugin/3322"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Aspen Trumpet 2.vst3.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Aspen Trumpet 2.vst3.vst"
  end
end

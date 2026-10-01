cask "aspen-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Clarinet_vst3.vst.zip"
  name "Aspen Clarinet"
  desc "Aspen Clarinet."
  homepage "https://plugins4free.com/plugin/3318"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Aspen Clarinet.vst3.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Aspen Clarinet.vst3.vst"
  end
end

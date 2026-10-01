cask "tal-bassline-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TAL-BassLine.vst.zip"
  name "TAL-BassLine"
  desc "TAL-BassLine, a free virtual analog bass synthesizer especially made for bass, acid sounds and effects."
  homepage "https://plugins4free.com/plugin/688"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "TAL-BassLine.vst", "{{user}}/Library/Audio/Plug-Ins/VST/TAL-BassLine.vst"
  end
end

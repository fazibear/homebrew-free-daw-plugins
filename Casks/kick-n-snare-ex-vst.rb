cask "kick-n-snare-ex-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/KicknSnareEX_MacVST.zip"
  name "Kick-n-Snare EX"
  desc "Kick-n-Snare EX is a drum rompler for EDM ."
  homepage "https://plugins4free.com/plugin/2963"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Kick n Snare EX/Kick n Snare EX.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Kick n Snare EX.vst"
  end
end

cask "k1v-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/NilsK1v-MacOS-VST.zip"
  name "K1v"
  desc "K1v is a classic rompler that emulates the famous japanese classic Kawai K1 from 1988."
  homepage "https://plugins4free.com/plugin/3148"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "NilsK1v-MacOS-VST/NilsK1v.vst", "{{user}}/Library/Audio/Plug-Ins/VST/NilsK1v.vst"
  end
end

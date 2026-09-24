cask "k1v-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/NilsK1v-MacOS-VST.zip"
  name "K1v"
  desc "K1v is a classic rompler that emulates the famous japanese classic Kawai K1 from 1988."
  homepage "https://plugins4free.com/plugin/3148"
  depends_on :macos
  artifact "NilsK1v-MacOS-VST/__MACOSX/NilsK1v.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

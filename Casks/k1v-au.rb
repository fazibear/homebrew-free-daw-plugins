cask "k1v-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/NilsK1v-MacOS-AU.zip"
  name "K1v"
  desc "K1v is a classic rompler that emulates the famous japanese classic Kawai K1 from 1988."
  homepage "https://plugins4free.com/plugin/3148"
  depends_on :macos
  artifact "NilsK1v.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

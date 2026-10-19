cask "keys-of-the-70s-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/KeysOfThe70s_osx_64_vst3.zip"
  name "Keys of the 70s"
  desc "Keys of the 70's is a Keyboard wave synthesizer ."
  homepage "https://plugins4free.com/plugin/3122"
  depends_on :macos
  artifact "KeysOfThe70s2.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/KeysOfThe70s2.vst3"
end

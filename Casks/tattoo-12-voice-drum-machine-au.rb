cask "tattoo-12-voice-drum-machine-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Audio_Damage_Tattoo_Mac.zip"
  name "Tattoo 12 voice drum machine"
  desc "Tattoo 12 voice drum machine"
  homepage "https://plugins4free.com/plugin/3727"
  depends_on :macos
  artifact "Audio_Damage_Tattoo_Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

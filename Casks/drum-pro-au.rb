cask "drum-pro-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DrumPro_MacAU.zip"
  name "Drum Pro"
  desc "Drum Pro is a drum kit rompler including some sampled vintage units."
  homepage "https://plugins4free.com/plugin/2225"
  depends_on :macos
  artifact "DrumPro_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

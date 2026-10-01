cask "drum-pro-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DrumPro_MacAU.zip"
  name "Drum Pro"
  desc "Drum Pro is a drum kit rompler including some sampled vintage units."
  homepage "https://plugins4free.com/plugin/2225"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Drum Pro Mac AU/DRUM PRO.component", "{{user}}/Library/Audio/Plug-Ins/Components/DRUM PRO.component"
  end
end

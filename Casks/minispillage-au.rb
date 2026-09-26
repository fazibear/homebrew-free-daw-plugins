cask "minispillage-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/minispillage.dmg"
  name "MiniSpillage"
  desc "MiniSpillage is a drum synthesizer plug-in with a high resolution DSP audio engine and a custom set of synthesis algorithms designed exclusively for original electronic percussion sounds."
  homepage "https://plugins4free.com/plugin/1058"
  depends_on :macos
  dmg "minispillage.dmg"
end

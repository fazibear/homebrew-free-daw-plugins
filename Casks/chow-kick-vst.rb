cask "chow-kick-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ChowKick-Mac.dmg"
  name "Chow Kick"
  desc "Chow Kick is a kick drum synthesizer based on creative physical modelling of old drum machine circuits."
  homepage "https://plugins4free.com/plugin/3493"
  depends_on :macos
  dmg "ChowKick-Mac.dmg"
end

cask "tattoo-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Audio_Damage_Tattoo_Mac.zip"
  name "Tattoo"
  desc "Tattoo is a drum machine featuring 12 independent voice-tuned synthesizer topologies loosely based on the X0X series, and a sophisticated step/mod sequencer."
  homepage "https://plugins4free.com/plugin/3727"
  depends_on :macos
  pkg "Tattoo_120.pkg"
end

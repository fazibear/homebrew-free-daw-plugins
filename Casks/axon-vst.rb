cask "axon-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Audio_Damage_Axon_Mac.zip"
  name "Axon"
  desc "Axon is an FM drum machine with a Neuron Sequencer."
  homepage "https://plugins4free.com/plugin/3728"
  depends_on :macos
  pkg "OSX_Axon_130_Installer.pkg"
end

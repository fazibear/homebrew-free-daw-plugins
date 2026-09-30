cask "cheeze-machine-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/CheezeMachine_2007_06_04.dmg"
  name "Cheeze Machine"
  desc "Cheeze Machine emulates the classic string ensemble sound , made popular by such classic synths as the Crumar Performer or the Arp Solina. saw-like waveform chorus ensemble emulator 6-stages phaser reverb"
  homepage "https://plugins4free.com/plugin/285"
  depends_on :macos
  dmg "CheezeMachine_2007_06_04.dmg"
end

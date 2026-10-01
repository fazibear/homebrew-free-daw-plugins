cask "cheeze-machine-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/CheezeMachine_2007_06_04.dmg"
  name "Cheeze Machine"
  desc "Cheeze Machine emulates the classic string ensemble sound , made popular by such classic synths as the Crumar Performer or the Arp Solina. saw-like waveform chorus ensemble emulator 6-stages phaser reverb"
  homepage "https://plugins4free.com/plugin/285"
  depends_on :macos
  container type: :dmg
  artifact "VST/CheezeMachine.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/CheezeMachine.vst"
  artifact "VST/CheezeMachineMetal.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/CheezeMachineMetal.vst"
end

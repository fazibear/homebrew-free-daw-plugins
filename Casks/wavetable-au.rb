cask "wavetable-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Wavetable_Mac.zip"
  name "Wavetable"
  desc "Socalabs Wavetable is a wavetable synthesizer ."
  homepage "https://plugins4free.com/plugin/3968"
  depends_on :macos
  artifact "Wavetable.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Wavetable.component"
end

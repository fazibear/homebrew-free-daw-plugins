cask "synth1-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Synth1macvst113beta8.zip"
  name "Synth1"
  desc "Synth1 is modelled on the Clavia Nord Lead 2 Red Synth."
  homepage "https://plugins4free.com/plugin/245"
  depends_on :macos
  artifact "Synth1.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

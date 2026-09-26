cask "synth1-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Synth1macau113beta11.zip"
  name "Synth1"
  desc "Synth1 is modelled on the Clavia Nord Lead 2 Red Synth."
  homepage "https://plugins4free.com/plugin/245"
  depends_on :macos
  artifact "Synth1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

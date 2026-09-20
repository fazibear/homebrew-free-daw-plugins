cask "gr-8-analog-arp-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/gr-8-au.zip"
  name "GR-8 Analog arp synth"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/3491"
  depends_on :macos
  artifact "gr-8-au", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

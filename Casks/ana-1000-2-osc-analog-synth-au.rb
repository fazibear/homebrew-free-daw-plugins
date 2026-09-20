cask "ana-1000-2-osc-analog-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ANA-1000_Lurker_MacAU.zip"
  name "ANA-1000 2 osc analog synth"
  desc "ANA-1000 2 osc analog synth"
  homepage "https://plugins4free.com/plugin/3022"
  depends_on :macos
  artifact "ANA-1000_Lurker_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

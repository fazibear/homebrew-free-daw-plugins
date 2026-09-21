cask "tyrell-nexus-6-analog-subtractive-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TyrellN6-V3-Mac-Catalina_3.zip"
  name "Tyrell Nexus 6 Analog / subtractive synth"
  desc "Tyrell Nexus 6 Analog / subtractive synth"
  homepage "https://plugins4free.com/plugin/1007"
  depends_on :macos
  artifact "TyrellN6-V3-Mac-Catalina_3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

cask "2rulesynth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/2RuleSynth_MacAU.zip"
  name "2RuleSynth"
  desc "2RuleSynth is a hybrid synthesizer featuring classic subtractive, FM or and Ring simulatenously."
  homepage "https://plugins4free.com/plugin/3594"
  depends_on :macos
  artifact "2RuleSynth_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

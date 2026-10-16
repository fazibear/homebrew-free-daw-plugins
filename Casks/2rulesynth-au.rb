cask "2rulesynth-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/2RuleSynth_MacAU.zip"
  name "2RuleSynth"
  desc "2RuleSynth is a hybrid synthesizer featuring classic subtractive, FM or and Ring simulatenously."
  homepage "https://plugins4free.com/plugin/3594"
  depends_on :macos
  artifact "2RuleSynth_v2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/2RuleSynth_v2.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/2RuleSynth_v2.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/2RuleSynth_v2.component"]
  end
end

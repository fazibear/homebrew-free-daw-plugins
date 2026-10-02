cask "my-first-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MyFirstSynth_MacAU.zip"
  name "My First Synth"
  desc "My First Synth is a simple monophonic synthesizer ."
  homepage "https://plugins4free.com/plugin/2431"
  depends_on :macos
  artifact "My First Synth.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth.component"
  artifact "My First Synth_x64.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth_x64.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth_x64.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/My First Synth_x64.component"]
  end
end

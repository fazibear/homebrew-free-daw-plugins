cask "oxe-fm-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/oxe_MacVST.zip"
  name "Oxe FM Synth"
  desc "Oxe FM Synth is a 8 operators frequency modulation synthesizer ."
  homepage "https://plugins4free.com/plugin/2258"
  depends_on :macos
  artifact "oxefmsynth.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/oxefmsynth.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/oxefmsynth.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/oxefmsynth.vst"]
  end
end

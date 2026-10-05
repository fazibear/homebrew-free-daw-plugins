cask "tunefish-4-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Tunefish4_MacVST.zip"
  name "Tunefish 4"
  desc "Tunefish 4 is an additive / wavetable synth ."
  homepage "https://plugins4free.com/plugin/1836"
  depends_on :macos
  artifact "Tunefish4.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Tunefish4.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Tunefish4.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Tunefish4.vst"]
  end
end

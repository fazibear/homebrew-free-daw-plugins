cask "monochord-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MonoChord_Mac.zip"
  name "MonoChord"
  desc "MonoChord is a 3 OSC synth with FM synthesis and a programmable Triad Chord maker."
  homepage "https://plugins4free.com/plugin/2892"
  depends_on :macos
  artifact "MonoChord.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/MonoChord.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/MonoChord.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/MonoChord.vst"]
  end
end

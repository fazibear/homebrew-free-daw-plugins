cask "harmony-box-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Harmony-Box-Mac-VST-1.0.zip"
  name "Harmony Box"
  desc "Harmony Box is a synthesizer that has the rules of modal jazz built-in."
  homepage "https://plugins4free.com/plugin/1069"
  depends_on :macos
  artifact "Harmony Box.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Harmony Box.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Harmony Box.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Harmony Box.vst"]
  end
end

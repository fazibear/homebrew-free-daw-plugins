cask "x-crash-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/X-Crash_MacVST.zip"
  name "X Crash"
  desc "X Crash is a sampled 16 inch crash cymbal ."
  homepage "https://plugins4free.com/plugin/2562"
  depends_on :macos
  artifact "X Crash.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/X Crash.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/X Crash.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/X Crash.vst"]
  end
end

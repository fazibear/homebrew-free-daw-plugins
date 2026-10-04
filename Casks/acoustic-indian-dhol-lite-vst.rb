cask "acoustic-indian-dhol-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/RDGAudio-Dhol-Lite-MacVST.zip"
  name "Acoustic Indian Dhol Lite"
  desc "Acoustic Indian Dhol Lite is a sample based indian dhol percussion."
  homepage "https://plugins4free.com/plugin/2861"
  depends_on :macos
  artifact "Acoustic Dhol LT.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Acoustic Dhol LT.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Acoustic Dhol LT.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Acoustic Dhol LT.vst"]
  end
end

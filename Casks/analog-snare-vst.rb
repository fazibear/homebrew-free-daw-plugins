cask "analog-snare-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AnalogSnare-Lite_MacVST.zip"
  name "Analog Snare"
  desc "Analog Snare offers a set of 10 analog snare drum samples."
  homepage "https://plugins4free.com/plugin/2228"
  depends_on :macos
  artifact "AnalogSnare Lite.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogSnare Lite.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogSnare Lite.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogSnare Lite.vst"]
  end
end

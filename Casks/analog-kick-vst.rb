cask "analog-kick-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AnalogKick-Lite_MacVST.zip"
  name "Analog Kick"
  desc "Analog Kick offers a set of 10 analog kick drum samples."
  homepage "https://plugins4free.com/plugin/2229"
  depends_on :macos
  artifact "AnalogKick Lite.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogKick Lite.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogKick Lite.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/AnalogKick Lite.vst"]
  end
end

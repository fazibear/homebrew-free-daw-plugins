cask "analog-snare-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AnalogSnare-Lite_MacAU.zip"
  name "Analog Snare"
  desc "Analog Snare offers a set of 10 analog snare drum samples."
  homepage "https://plugins4free.com/plugin/2228"
  depends_on :macos
  artifact "AnalogSnare Lite.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogSnare Lite.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogSnare Lite.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogSnare Lite.component"]
  end
end

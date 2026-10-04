cask "analog-kick-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AnalogKick-Lite_MacAU.zip"
  name "Analog Kick"
  desc "Analog Kick offers a set of 10 analog kick drum samples."
  homepage "https://plugins4free.com/plugin/2229"
  depends_on :macos
  artifact "AnalogKick Lite.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogKick Lite.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogKick Lite.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/AnalogKick Lite.component"]
  end
end

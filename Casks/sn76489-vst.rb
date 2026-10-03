cask "sn76489-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SN76489_MacVST.zip"
  name "SN76489"
  desc "SN76489 emulates Texas Instruments SN76489 of the Sega Master System and other consoles."
  homepage "https://plugins4free.com/plugin/2835"
  depends_on :macos
  artifact "SN76489.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/SN76489.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/SN76489.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/SN76489.vst"]
  end
end

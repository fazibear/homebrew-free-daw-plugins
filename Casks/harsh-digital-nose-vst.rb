cask "harsh-digital-nose-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HarshDigitalNose.dmg"
  name "Harsh Digital Nose"
  desc "Harsh Digital Nose converts 2 images into 2 oscillator waveforms and then mixes them in various horrible ways."
  homepage "https://plugins4free.com/plugin/703"
  depends_on :macos
  container type: :dmg
  artifact "Harsh Digital Nose.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Harsh Digital Nose.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Harsh Digital Nose.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Harsh Digital Nose.vst"]
  end
end

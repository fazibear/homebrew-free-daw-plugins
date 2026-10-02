cask "ovalizer-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Ovalizer.vst.zip"
  name "Ovalizer"
  desc "Ovalizer is a digital glitch emulator using live audio source or WAV files."
  homepage "https://plugins4free.com/plugin/2938"
  depends_on :macos
  artifact "Ovalizer.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Ovalizer.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Ovalizer.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Ovalizer.vst"]
  end
end

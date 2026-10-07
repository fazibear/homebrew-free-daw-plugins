cask "sfx8-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SFX8_MacVST.zip"
  name "SFX8"
  desc "SFX8 is a retro style sound effects generator inspired by the sounds of NES."
  homepage "https://plugins4free.com/plugin/3017"
  depends_on :macos
  artifact "SFX8.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/SFX8.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/SFX8.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/SFX8.vst"]
  end
end

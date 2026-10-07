cask "dvnsfxmaker-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DvnSfxMaker_MacVST.zip"
  name "DvnSfxMaker"
  desc "DvnSfxMaker is a synthesizer designed to create sound effects for video games."
  homepage "https://plugins4free.com/plugin/2447"
  depends_on :macos
  artifact "DvnSfxMaker_x32.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x32.vst"
  artifact "DvnSfxMaker_x64.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x64.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x32.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x32.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x64.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DvnSfxMaker_x64.vst"]
  end
end

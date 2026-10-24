cask "vibromaster-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VibroMaster_MacVST.zip"
  name "VibroMaster"
  desc "VibroMaster is a sampled vibraphone ."
  homepage "https://plugins4free.com/plugin/2126"
  depends_on :macos
  artifact "VibroMaster.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VibroMaster.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VibroMaster.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VibroMaster.vst"]
  end
end

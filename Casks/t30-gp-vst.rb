cask "t30-gp-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/T30-GP_MacVST.zip"
  name "T30-GP"
  desc "T30-GP is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/3659"
  depends_on :macos
  artifact "T30-GP.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/T30-GP.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/T30-GP.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/T30-GP.vst3.vst"]
  end
end

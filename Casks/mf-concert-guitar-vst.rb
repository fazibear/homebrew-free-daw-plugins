cask "mf-concert-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MF_Concert_Guitar.vst.zip"
  name "MF Concert Guitar"
  desc "MF Concert Guitar is a sampled nylon strings guitar ."
  homepage "https://plugins4free.com/plugin/2317"
  depends_on :macos
  artifact "MF Concert Guitar.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/MF Concert Guitar.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/MF Concert Guitar.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/MF Concert Guitar.vst"]
  end
end

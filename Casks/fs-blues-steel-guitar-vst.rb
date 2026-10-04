cask "fs-blues-steel-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/FS_Blues_Steel_Guitar.vst.zip"
  name "FS Blues Steel Guitar"
  desc "FS Blues Steel Guitar is a sampled steel strings acoustic guitar ."
  homepage "https://plugins4free.com/plugin/2333"
  depends_on :macos
  artifact "FS Blues Steel Guitar.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/FS Blues Steel Guitar.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/FS Blues Steel Guitar.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/FS Blues Steel Guitar.vst"]
  end
end

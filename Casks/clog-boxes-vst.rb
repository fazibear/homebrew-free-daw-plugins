cask "clog-boxes-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Clog-Boxes_MacVST.zip"
  name "Clog Boxes"
  desc "Clog Boxes is a sampled woodblock set."
  homepage "https://plugins4free.com/plugin/2354"
  depends_on :macos
  artifact "Clog Boxes.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Clog Boxes.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Clog Boxes.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Clog Boxes.vst"]
  end
end

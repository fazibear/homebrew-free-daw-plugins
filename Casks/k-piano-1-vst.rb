cask "k-piano-1-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VCSL-K-Piano1_MacVST.zip"
  name "K Piano 1"
  desc "K Piano 1 is a Kawai Grand Piano ."
  homepage "https://plugins4free.com/plugin/3574"
  depends_on :macos
  artifact "VCSL K Piano 1.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VCSL K Piano 1.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VCSL K Piano 1.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VCSL K Piano 1.vst3.vst"]
  end
end

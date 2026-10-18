cask "sid-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SID_MacVST.zip"
  name "SID"
  desc "SID emulates the MOS Technology SID of the Commodore 64 ."
  homepage "https://plugins4free.com/plugin/2839"
  depends_on :macos
  artifact "SID.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/SID.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/SID.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/SID.vst"]
  end
end

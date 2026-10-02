cask "vstsid-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/vstsid_MacVST.zip"
  name "VSTSID"
  desc "VSTSID is a Commodore 64 sound chip emulation."
  homepage "https://plugins4free.com/plugin/3362"
  depends_on :macos
  artifact "macOS/VST/vstsid.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/vstsid.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/vstsid.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/vstsid.vst"]
  end
end

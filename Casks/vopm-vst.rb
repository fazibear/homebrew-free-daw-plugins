cask "vopm-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VOPM_MacVST.zip"
  name "VOPM"
  desc "VOPM is an emulation of the Yamaha YM2151 (OPM) 4 operator FM sound chip. Yamaha YM2151 (OPM) 4 operator FM sound chip emulation. Supports MIDI CCs."
  homepage "https://plugins4free.com/plugin/1066"
  depends_on :macos
  artifact "VOPM.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VOPM.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VOPM.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VOPM.vst"]
  end
end

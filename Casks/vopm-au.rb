cask "vopm-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VOPM_MacAU.zip"
  name "VOPM"
  desc "VOPM is an emulation of the Yamaha YM2151 (OPM) 4 operator FM sound chip. Yamaha YM2151 (OPM) 4 operator FM sound chip emulation. Supports MIDI CCs."
  homepage "https://plugins4free.com/plugin/1066"
  depends_on :macos
  artifact "VOPM.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VOPM.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VOPM.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VOPM.component"]
  end
end

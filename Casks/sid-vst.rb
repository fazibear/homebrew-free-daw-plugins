cask "sid-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SID_MacAU.zip"
  name "SID"
  desc "SID emulates the MOS Technology SID of the Commodore 64 ."
  homepage "https://plugins4free.com/plugin/2839"
  depends_on :macos
  artifact "SID.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/SID.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/SID.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/SID.component"]
  end
end

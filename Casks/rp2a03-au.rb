cask "rp2a03-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/RP2A03_MacAU.zip"
  name "RP2A03"
  desc "RP2A03 emulates Ricoh 2A03 of the NTSC Nintendo Entertainment System."
  homepage "https://plugins4free.com/plugin/2833"
  depends_on :macos
  artifact "RP2A03.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RP2A03.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/RP2A03.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/RP2A03.component"]
  end
end

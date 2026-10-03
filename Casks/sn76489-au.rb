cask "sn76489-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SN76489_MacAU.zip"
  name "SN76489"
  desc "SN76489 emulates Texas Instruments SN76489 of the Sega Master System and other consoles."
  homepage "https://plugins4free.com/plugin/2835"
  depends_on :macos
  artifact "SN76489.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/SN76489.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/SN76489.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/SN76489.component"]
  end
end

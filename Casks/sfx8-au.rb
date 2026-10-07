cask "sfx8-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SFX8_MacAU.zip"
  name "SFX8"
  desc "SFX8 is a retro style sound effects generator inspired by the sounds of NES."
  homepage "https://plugins4free.com/plugin/3017"
  depends_on :macos
  artifact "SFX8.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/SFX8.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/SFX8.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/SFX8.component"]
  end
end

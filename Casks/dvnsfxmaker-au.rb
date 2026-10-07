cask "dvnsfxmaker-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DvnSfxMaker_MacAU.zip"
  name "DvnSfxMaker"
  desc "DvnSfxMaker is a synthesizer designed to create sound effects for video games."
  homepage "https://plugins4free.com/plugin/2447"
  depends_on :macos
  artifact "DvnSfxMaker_x32.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x32.component"
  artifact "DvnSfxMaker_x64.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x64.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x32.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x32.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x64.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/DvnSfxMaker_x64.component"]
  end
end

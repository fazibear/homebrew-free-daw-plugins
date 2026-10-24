cask "vibromaster-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VibroMaster_MacAU.zip"
  name "VibroMaster"
  desc "VibroMaster is a sampled vibraphone ."
  homepage "https://plugins4free.com/plugin/2126"
  depends_on :macos
  artifact "VibroMaster.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VibroMaster.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VibroMaster.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VibroMaster.component"]
  end
end

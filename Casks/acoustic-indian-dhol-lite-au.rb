cask "acoustic-indian-dhol-lite-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/RDGAudio-Dhol-Lite-MacAU.zip"
  name "Acoustic Indian Dhol Lite"
  desc "Acoustic Indian Dhol Lite is a sample based indian dhol percussion."
  homepage "https://plugins4free.com/plugin/2861"
  depends_on :macos
  artifact "Acoustic Dhol LT.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Acoustic Dhol LT.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Acoustic Dhol LT.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Acoustic Dhol LT.component"]
  end
end

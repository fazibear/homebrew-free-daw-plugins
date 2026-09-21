cask "acoustic-indian-dhol-lite-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/RDGAudio-Dhol-Lite-MacAU.zip"
  name "Acoustic Indian Dhol Lite"
  desc "Acoustic Indian Dhol Lite is a sample based indian dhol percussion."
  homepage "https://plugins4free.com/plugin/2861"
  depends_on :macos
  artifact "RDGAudio-Dhol-Lite-MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end

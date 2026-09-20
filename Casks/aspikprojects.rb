cask "aspikprojects" do
  version "2.0.0"
  sha256 :no_check
  url "https://github.com/DoomyDwyer/ASPiKProjects/releases/download/2.0.0/Doomsville_AU_MacOS_arm64_2.0.0.zip"
  name "ASPiKProjects"
  desc "Free audio plugin"
  homepage "https://github.com/DoomyDwyer/ASPiKProjects"
  depends_on :macos
  artifact "Doomsville_AU_MacOS_arm64_2.0.0", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end

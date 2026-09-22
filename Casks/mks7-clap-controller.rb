cask "mks7-clap-controller" do
  version "0.1.2"
  sha256 "efc4ab71ebb815b2aa3d18798b0a62a532ac3f85a8346e01589c8c5822f0b1aa"
  url "https://github.com/kovaacs/mks7_clap_controller/releases/download/v0.1.2/MKS-7-Controller-v0.1.2-macOS-Apple-Silicon.zip"
  name "mks7_clap_controller"
  desc "Free audio plugin"
  homepage "https://github.com/kovaacs/mks7_clap_controller"
  depends_on :macos
  artifact "MKS-7 Controller.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP"
end

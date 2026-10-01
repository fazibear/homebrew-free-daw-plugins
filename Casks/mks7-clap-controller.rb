cask "mks7-clap-controller" do
  version "0.1.2"
  sha256 "efc4ab71ebb815b2aa3d18798b0a62a532ac3f85a8346e01589c8c5822f0b1aa"
  url "https://github.com/kovaacs/mks7_clap_controller/releases/download/v0.1.2/MKS-7-Controller-v0.1.2-macOS-Apple-Silicon.zip"
  name "mks7_clap_controller"
  desc "Free audio plugin"
  homepage "https://github.com/kovaacs/mks7_clap_controller"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    move "MKS-7 Controller.clap", "{{user}}/Library/Audio/Plug-Ins/CLAP/MKS-7 Controller.clap"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    copy "LICENSE", "{{user}}/Library/Audio/Plug-Ins/CLAP/LICENSE"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    copy "THIRD_PARTY_LICENSES.html", "{{user}}/Library/Audio/Plug-Ins/CLAP/THIRD_PARTY_LICENSES.html"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    copy "README.md", "{{user}}/Library/Audio/Plug-Ins/CLAP/README.md"
  end
end

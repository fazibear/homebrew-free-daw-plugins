cask "medicine-bell-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MedBell_Mac.zip"
  name "Medicine Bell"
  desc "Medicine Bell is a chime and bell instrument designed for versatility."
  homepage "https://plugins4free.com/plugin/2874"
  depends_on :macos
  artifact "MedBell_Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end

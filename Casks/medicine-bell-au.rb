cask "medicine-bell-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MedBell_auMac.zip"
  name "Medicine Bell"
  desc "Medicine Bell is a chime and bell instrument designed for versatility."
  homepage "https://plugins4free.com/plugin/2874"
  depends_on :macos
  artifact "MedBell_auMac/Medicine Bell.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Medicine Bell.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Medicine Bell.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Medicine Bell.component"]
  end
end

cask "medicine-bell-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MedBell_Mac.zip"
  name "Medicine Bell"
  desc "Medicine Bell is a chime and bell instrument designed for versatility."
  homepage "https://plugins4free.com/plugin/2874"
  depends_on :macos
  artifact "MedBell_Mac/Medicine Bell.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Medicine Bell.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Medicine Bell.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Medicine Bell.vst3.vst"]
  end
end

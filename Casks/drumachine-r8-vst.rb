cask "drumachine-r8-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Drumachine-R81.dmg"
  name "Drumachine R8"
  desc "A tweakable synthesized drum kit ."
  homepage "https://plugins4free.com/plugin/1056"
  depends_on :macos
  container type: :dmg
  artifact "kl./DRECEIVE R8.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DRECEIVE R8.vst"
  artifact "kl./DRUMACHINE R8.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DRECEIVE R8.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DRECEIVE R8.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst"]
  end
end

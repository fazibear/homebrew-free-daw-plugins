cask "ticky-clav-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TickyClav_2007_07_15.dmg"
  name "Ticky Clav"
  desc "This plugin emulates the ultra-funky sound of the Hohner Clavinet ."
  homepage "https://plugins4free.com/plugin/276"
  depends_on :macos
  container type: :dmg
  artifact "VST/TickyClav.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/TickyClav.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/TickyClav.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/TickyClav.vst"]
  end
end

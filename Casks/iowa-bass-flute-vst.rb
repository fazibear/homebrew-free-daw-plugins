cask "iowa-bass-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Bass_Flute.vst.zip"
  name "Iowa Bass Flute"
  desc "Iowa Bass Flute is a sampled bass flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2418"
  depends_on :macos
  artifact "Iowa Bass Flute.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Bass Flute.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Bass Flute.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Bass Flute.vst"]
  end
end

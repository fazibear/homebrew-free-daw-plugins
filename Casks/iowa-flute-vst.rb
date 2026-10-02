cask "iowa-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Flute.vst.zip"
  name "Iowa Flute"
  desc "Iowa Flute is a sampled flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2419"
  depends_on :macos
  artifact "Iowa Flute.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Flute.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Flute.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Flute.vst"]
  end
end

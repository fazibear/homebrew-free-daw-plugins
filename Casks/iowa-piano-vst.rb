cask "iowa-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Piano.vst.zip"
  name "Iowa Piano"
  desc "Iowa Piano is a Steinway Grand Piano with almost every note sampled and 3 velocity layers."
  homepage "https://plugins4free.com/plugin/2294"
  depends_on :macos
  artifact "Iowa Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Piano.vst"]
  end
end

cask "bellsebuth-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/BellsEbuth_MacVST.zip"
  name "BellsEbuth"
  desc "BellsEbuth is a sampled orchestral bells (modern glockenspiel)."
  homepage "https://plugins4free.com/plugin/2150"
  depends_on :macos
  artifact "BellsEbuth.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/BellsEbuth.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/BellsEbuth.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/BellsEbuth.vst"]
  end
end

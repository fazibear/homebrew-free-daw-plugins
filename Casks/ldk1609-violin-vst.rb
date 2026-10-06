cask "ldk1609-violin-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/LDK1609_Violin.vst.zip"
  name "LDK1609 Violin"
  desc "LDK1609 Violin is a sampled violin ."
  homepage "https://plugins4free.com/plugin/2417"
  depends_on :macos
  artifact "LDK1609 Violin.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/LDK1609 Violin.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/LDK1609 Violin.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/LDK1609 Violin.vst"]
  end
end

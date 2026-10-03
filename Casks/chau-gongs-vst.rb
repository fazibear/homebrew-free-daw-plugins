cask "chau-gongs-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Chau-Gongs_MacVST.zip"
  name "Chau Gongs"
  desc "Chau Gongs is a sampled chinese gong set."
  homepage "https://plugins4free.com/plugin/2237"
  depends_on :macos
  artifact "Chau Gongs.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Chau Gongs.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Chau Gongs.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Chau Gongs.vst"]
  end
end

cask "thai-gongs-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Thai-Gongs_MacVST.zip"
  name "Thai Gongs"
  desc "Thai Gongs is a sampled traditional chromatic gong set from Thailand."
  homepage "https://plugins4free.com/plugin/2218"
  depends_on :macos
  artifact "Thai Gongs.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Thai Gongs.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Thai Gongs.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Thai Gongs.vst"]
  end
end

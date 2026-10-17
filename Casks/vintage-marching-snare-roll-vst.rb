cask "vintage-marching-snare-roll-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Marching-Snare_MacVST.zip"
  name "Vintage Marching Snare Roll"
  desc "Vintage Marching Snare Roll is a marching band drum snare ."
  homepage "https://plugins4free.com/plugin/3077"
  depends_on :macos
  artifact "Marching Snare.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Marching Snare.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Marching Snare.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Marching Snare.vst"]
  end
end

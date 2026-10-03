cask "cherry-snare-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Cherry-Snare_MacVST.zip"
  name "Cherry Snare"
  desc "Cherry Snare is a sampled acoustic snare drum ."
  homepage "https://plugins4free.com/plugin/2277"
  depends_on :macos
  artifact "Cherry Snare.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Cherry Snare.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Cherry Snare.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Cherry Snare.vst"]
  end
end

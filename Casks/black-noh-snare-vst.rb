cask "black-noh-snare-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/bns-osx-vst.zip"
  name "Black Noh Snare"
  desc "Black Noh Snare is a sampled snare drum with 9 velocity layers, every velocity layer has 8 random-robin samples."
  homepage "https://plugins4free.com/plugin/1683"
  depends_on :macos
  artifact "Black Noh Snare.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Black Noh Snare.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Black Noh Snare.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Black Noh Snare.vst"]
  end
end

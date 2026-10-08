cask "black-noh-snare-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/bns-osx-au.zip"
  name "Black Noh Snare"
  desc "Black Noh Snare is a sampled snare drum with 9 velocity layers, every velocity layer has 8 random-robin samples."
  homepage "https://plugins4free.com/plugin/1683"
  depends_on :macos
  artifact "Black Noh Snare.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Black Noh Snare.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Black Noh Snare.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Black Noh Snare.component"]
  end
end

cask "cherry-snare-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Cherry-Snare_MacAU.zip"
  name "Cherry Snare"
  desc "Cherry Snare is a sampled acoustic snare drum ."
  homepage "https://plugins4free.com/plugin/2277"
  depends_on :macos
  artifact "Cherry Snare.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Cherry Snare.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Cherry Snare.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Cherry Snare.component"]
  end
end

cask "hand-crash-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Hand-Crash_MacAU.zip"
  name "Hand Crash"
  desc "Hand Crash is a set of 5 sampled orchestral cymbals ."
  homepage "https://plugins4free.com/plugin/2161"
  depends_on :macos
  artifact "Hand Crash.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Hand Crash.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Hand Crash.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Hand Crash.component"]
  end
end

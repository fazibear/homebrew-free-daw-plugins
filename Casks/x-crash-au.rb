cask "x-crash-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/X-Crash_MacAU.zip"
  name "X Crash"
  desc "X Crash is a sampled 16 inch crash cymbal ."
  homepage "https://plugins4free.com/plugin/2562"
  depends_on :macos
  artifact "X Crash.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/X Crash.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/X Crash.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/X Crash.component"]
  end
end

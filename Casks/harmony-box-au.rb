cask "harmony-box-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Harmony-Box-Mac-AU-1.0.zip"
  name "Harmony Box"
  desc "Harmony Box is a synthesizer that has the rules of modal jazz built-in."
  homepage "https://plugins4free.com/plugin/1069"
  depends_on :macos
  artifact "Harmony Box.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Harmony Box.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Harmony Box.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Harmony Box.component"]
  end
end

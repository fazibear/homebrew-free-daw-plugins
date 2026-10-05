cask "tunefish-4-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Tunefish4_MacAU.zip"
  name "Tunefish 4"
  desc "Tunefish 4 is an additive / wavetable synth ."
  homepage "https://plugins4free.com/plugin/1836"
  depends_on :macos
  artifact "Tunefish4.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Tunefish4.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Tunefish4.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Tunefish4.component"]
  end
end

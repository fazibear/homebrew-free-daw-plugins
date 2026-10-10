cask "tunefish-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/tunefish3_MacAU.zip"
  name "Tunefish"
  desc "Tunefish is a tiny virtual analogue synth that was originally developed for the 64k intros of the demo group Brain Control."
  homepage "https://plugins4free.com/plugin/1020"
  depends_on :macos
  artifact "tunefish3.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/tunefish3.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/tunefish3.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/tunefish3.component"]
  end
end

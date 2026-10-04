cask "nofish-dub-siren-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/nofish-Dub-Siren_MacVST.zip"
  name "nofish Dub Siren"
  desc "nofish Dub Siren is a monophonic synth aiming to emulate these DIY devices used by Dub Sound Systems."
  homepage "https://plugins4free.com/plugin/2483"
  depends_on :macos
  artifact "nofish Dub Siren.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren.vst"
  artifact "nofish Dub Siren_x64.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren_x64.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren_x64.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/nofish Dub Siren_x64.vst"]
  end
end

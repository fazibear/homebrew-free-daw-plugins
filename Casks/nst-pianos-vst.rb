cask "nst-pianos-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/NST_Pianos_Mac_VST.zip"
  name "NST Pianos"
  desc "NST Pianos is an acoustic keyboards set."
  homepage "https://plugins4free.com/plugin/2889"
  depends_on :macos
  artifact "NST Pianos.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Pianos.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Pianos.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Pianos.vst3.vst"]
  end
end

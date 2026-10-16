cask "vsco2-percussion-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Percussion_V2.vst.zip"
  name "VSCO2 Percussion"
  desc "VSCO2 Percussion is a sampled orchestral percussion set ."
  homepage "https://plugins4free.com/plugin/2728"
  depends_on :macos
  artifact "VSCO2 Percussion.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Percussion.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Percussion.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Percussion.vst"]
  end
end

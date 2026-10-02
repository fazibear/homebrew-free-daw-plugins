cask "vsco2-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Piano_V2.vst.zip"
  name "VSCO2 Piano"
  desc "VSCO2 Piano is a sampled piano ."
  homepage "https://plugins4free.com/plugin/2729"
  depends_on :macos
  artifact "VSCO2 Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piano.vst"]
  end
end

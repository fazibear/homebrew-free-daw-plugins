cask "vsco2-bassoon-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Bassoon_V2.vst.zip"
  name "VSCO2 Bassoon"
  desc "VSCO2 Bassoon is a sampled bassoon ."
  homepage "https://plugins4free.com/plugin/2719"
  depends_on :macos
  artifact "VSCO2 Bassoon.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Bassoon.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Bassoon.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Bassoon.vst"]
  end
end

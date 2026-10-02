cask "vsco2-trombone-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Trombone_V2.vst.zip"
  name "VSCO2 Trombone"
  desc "VSCO2 Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2556"
  depends_on :macos
  artifact "VSCO2 Trombone.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trombone.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trombone.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trombone.vst"]
  end
end

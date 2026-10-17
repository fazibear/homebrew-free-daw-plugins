cask "vsco2-timpani-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Timpani_V2.vst.zip"
  name "VSCO2 Timpani"
  desc "VSCO2 Timpani is a sampled timpani ."
  homepage "https://plugins4free.com/plugin/2731"
  depends_on :macos
  artifact "VSCO2 Timpani.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Timpani.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Timpani.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Timpani.vst"]
  end
end

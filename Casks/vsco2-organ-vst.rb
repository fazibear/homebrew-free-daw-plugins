cask "vsco2-organ-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Organ_V2.vst.zip"
  name "VSCO2 Organ"
  desc "VSCO2 Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2726"
  depends_on :macos
  artifact "VSCO2 Organ.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Organ.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Organ.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Organ.vst"]
  end
end

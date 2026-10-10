cask "vsco2-upright-1-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Upright_1.vst.zip"
  name "VSCO2 Upright 1"
  desc "VSCO2 Upright 1 is a sampled upright piano ."
  homepage "https://plugins4free.com/plugin/2732"
  depends_on :macos
  artifact "VSCO2 Upright 1.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Upright 1.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Upright 1.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Upright 1.vst"]
  end
end

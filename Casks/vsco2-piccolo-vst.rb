cask "vsco2-piccolo-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Piccolo_V2.vst.zip"
  name "VSCO2 Piccolo"
  desc "VSCO2 Piccolo is a sampled piccolo flute ."
  homepage "https://plugins4free.com/plugin/2730"
  depends_on :macos
  artifact "VSCO2 Piccolo.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piccolo.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piccolo.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Piccolo.vst"]
  end
end

cask "vsco2-xylophone-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Xylophone_V2.vst.zip"
  name "VSCO2 Xylophone"
  desc "VSCO2 Xylophone is a sampled xylophone ."
  homepage "https://plugins4free.com/plugin/2733"
  depends_on :macos
  artifact "VSCO2 Xylophone.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Xylophone.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Xylophone.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Xylophone.vst"]
  end
end

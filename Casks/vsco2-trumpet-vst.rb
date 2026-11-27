cask "vsco2-trumpet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Trumpet_V2.vst.zip"
  name "VSCO2 Trumpet"
  desc "VSCO2 Trumpet is a sampled trumpet ."
  homepage "https://plugins4free.com/plugin/2557"
  depends_on :macos
  artifact "VSCO2 Trumpet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trumpet.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trumpet.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Trumpet.vst"]
  end
end

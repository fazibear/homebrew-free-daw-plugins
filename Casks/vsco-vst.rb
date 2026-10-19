cask "vsco-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO_MacVST_v1.zip"
  name "VSCO"
  desc "The Versilian Studios Chamber Orchestra is a small selection of standard orchestral and wind ensemble sampled instruments."
  homepage "https://plugins4free.com/plugin/1891"
  depends_on :macos
  artifact "VSCO_MacVST_v1.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO_MacVST_v1.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO_MacVST_v1.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO_MacVST_v1.vst"]
  end
end

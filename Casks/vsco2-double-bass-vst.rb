cask "vsco2-double-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Double_Bass_V2.vst.zip"
  name "VSCO2 Double Bass"
  desc "VSCO2 Double Bass is a sampled double bass ."
  homepage "https://plugins4free.com/plugin/2553"
  depends_on :macos
  artifact "VSCO2 Double Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Double Bass.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Double Bass.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Double Bass.vst"]
  end
end

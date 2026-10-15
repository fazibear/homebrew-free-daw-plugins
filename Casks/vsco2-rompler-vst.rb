cask "vsco2-rompler-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Orchestra.vst.zip"
  name "VSCO2 Rompler"
  desc "VSCO2 Rompler is a complete orchestral instruments rompler."
  homepage "https://plugins4free.com/plugin/2734"
  depends_on :macos
  artifact "VSCO2 Orchestra.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Orchestra.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Orchestra.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Orchestra.vst"]
  end
end

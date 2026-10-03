cask "vsco2-viola-section-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Viola_Section_V2.vst.zip"
  name "VSCO2 Viola Section"
  desc "VSCO2 Viola Section is a sampled viola section ."
  homepage "https://plugins4free.com/plugin/2542"
  depends_on :macos
  artifact "VSCO2 Viola Section.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Viola Section.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Viola Section.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Viola Section.vst"]
  end
end

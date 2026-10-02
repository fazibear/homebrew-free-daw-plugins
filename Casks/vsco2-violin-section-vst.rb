cask "vsco2-violin-section-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Violin_Section_V2.vst.zip"
  name "VSCO2 Violin Section"
  desc "VSCO2 Violin Section is a sampled violin section ."
  homepage "https://plugins4free.com/plugin/2539"
  depends_on :macos
  artifact "VSCO2 Violin Section.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Violin Section.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Violin Section.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Violin Section.vst"]
  end
end

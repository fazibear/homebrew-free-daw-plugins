cask "vsco2-cello-section-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Cello_Section_V2.vst.zip"
  name "VSCO2 Cello Section"
  desc "VSCO2 Cello Section is a sampled cello section ."
  homepage "https://plugins4free.com/plugin/2551"
  depends_on :macos
  artifact "VSCO2 Cello Section.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Cello Section.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Cello Section.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Cello Section.vst"]
  end
end

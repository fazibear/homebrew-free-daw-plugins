cask "vsco2-cello-section-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Cello_Section_V2.component.zip"
  name "VSCO2 Cello Section"
  desc "VSCO2 Cello Section is a sampled cello section ."
  homepage "https://plugins4free.com/plugin/2551"
  depends_on :macos
  artifact "VSCO2 Cello Section.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Cello Section.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Cello Section.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Cello Section.component"]
  end
end

cask "vsco2-viola-section-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Viola_Section_V2.component.zip"
  name "VSCO2 Viola Section"
  desc "VSCO2 Viola Section is a sampled viola section ."
  homepage "https://plugins4free.com/plugin/2542"
  depends_on :macos
  artifact "VSCO2 Viola Section.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Viola Section.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Viola Section.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Viola Section.component"]
  end
end

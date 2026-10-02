cask "vsco2-organ-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Organ_V2.component.zip"
  name "VSCO2 Organ"
  desc "VSCO2 Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2726"
  depends_on :macos
  artifact "VSCO2 Organ.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ.component"]
  end
end

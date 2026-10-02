cask "vsco2-soft-organ-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Organ_Soft_V2.component.zip"
  name "VSCO2 Soft Organ"
  desc "VSCO2 Soft Organ is a sampled organ ."
  homepage "https://plugins4free.com/plugin/2727"
  depends_on :macos
  artifact "VSCO2 Organ Soft.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ Soft.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ Soft.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Organ Soft.component"]
  end
end
